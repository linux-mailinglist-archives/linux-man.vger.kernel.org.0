Return-Path: <linux-man+bounces-285-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD5981CB1D
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 15:09:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 492F5283C9A
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 14:09:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB3DB1A5A3;
	Fri, 22 Dec 2023 14:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAhyH65Y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADE220316
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 14:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AC36C433C8
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 14:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703254158;
	bh=N0n3Mg4aQ59Dw72djntGM6T1voRz3MzVhu7G3GUcy3U=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=AAhyH65Yj/Fd1QAmyENhFM4FV36OZ0n2USYqw39PCyiGJymdfi1giEwfs1BGFsvMa
	 YA4LuTteLhkRLHptZlvYEdpJVSZ7BKrCHlYy3b4DxcdnOszafdQ8V1+FydvsT97+RQ
	 IQW0K6NZb9RP2Zhy/7OHBOkMIZvS1wylPc28sNKjH9kNkcM5CSMFon84BmOKM2V8b+
	 G+6m50l4mgNh2fm2QLwfBf5abfLJhDAAVhK+yowRQLIDWuwXaXzG0t1gZkyzLQdQ4h
	 8CAr0ZxqsEqKsGMj1b6Xh8fKu85+wijuQroH7969zCp1wVERIxm5xNMaz0wLSN8rO1
	 u2cl4iFjXCugA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id EC60FC53BCD; Fri, 22 Dec 2023 14:09:17 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218266] Need article about Linux shutdown process
Date: Fri, 22 Dec 2023 14:09:17 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: r.pandian@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-218266-11311-qRTq2nvtHy@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218266-11311@https.bugzilla.kernel.org/>
References: <bug-218266-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

https://bugzilla.kernel.org/show_bug.cgi?id=3D218266

Rajesh (r.pandian@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |r.pandian@gmail.com

--- Comment #4 from Rajesh (r.pandian@gmail.com) ---
Hello,

When graceful power,shutdown,reboot are done then the process are sent SIGT=
ERM
and kernel gives them time to flush or finish their exit gracefully. Then i=
t is
followed by SIGKILL which is a sure kill.

I made a test with the following C code.=20

After compiling, I tested with poweroff, shutdown, reboot and even send a k=
ill
PID and all of them logs with SIGNAL 15 which is the SIGTERM.=20

As you can also notice, I have handled to flush the remaining bytes to the =
disk
and then close the file and followed by exit(0).=20

Infact systemd does the same thing (Ref :
https://github.com/systemd/systemd/blob/main/src/shutdown/shutdown.c )=20

Note: This is a test code and it's log file can grow quiet large. So should=
 not
be used in production.


/* Sample test code for handling SIGTERM for graceful shutdown, poweroff,
reboot or kill */

#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>

FILE *fp;

void signalHandler(int signal) {
  if ( signal =3D=3D SIGTERM) {
     fprintf(fp, "Received signal is: %d\n", signal);
     fflush(fp);
     fclose(fp);
     exit(0);
  }
}

int main() {
  fp =3D fopen("a.log","w+");
  if (signal(SIGTERM,signalHandler) =3D=3D SIG_ERR)=20
     printf("\n SIGTERM CAUGHT");
  for (int i=3D0; ;i++) {
      fprintf(fp,"ok..\n");
      fflush(fp);
      sleep(2);
  }
}

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

