import { Injectable } from '@nestjs/common';
import { exec } from 'child_process';

@Injectable()
export class FfmpegService {
  async runTestCommand(): Promise<string> {
    const command = 'ffmpeg -version';
    return new Promise((resolve, reject) => {
      exec(command, (error, stdout, stderr) => {
        if (error) {
          reject(error.message);
          return;
        }
        if (stderr) {
          reject(stderr);
          return;
        }
        resolve(stdout);
      });
    });
  }
}
