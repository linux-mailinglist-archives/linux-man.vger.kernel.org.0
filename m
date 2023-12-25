Return-Path: <linux-man+bounces-292-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 927BE81DFAC
	for <lists+linux-man@lfdr.de>; Mon, 25 Dec 2023 11:19:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9E01CB20FB3
	for <lists+linux-man@lfdr.de>; Mon, 25 Dec 2023 10:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E757B1EB34;
	Mon, 25 Dec 2023 10:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLy5G0RO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0655364A4
	for <linux-man@vger.kernel.org>; Mon, 25 Dec 2023 10:19:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3454BC433C8
	for <linux-man@vger.kernel.org>; Mon, 25 Dec 2023 10:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703499569;
	bh=4IxRCzH08SCuH/mnIBGL8pWqDghW8Bs6uigXV/XZ3Fw=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=RLy5G0ROCvkN2tI4K5RK/Hx88b0gNxgzUt4oq3RFisUxCZvNRmBrpxue1NG9Z95tv
	 Yld15oeI6HEMeeS2BrJZACl5C+6YwKlGTklxaL8Ny1glpWPi7YNkPwoUqNfuTBw9t4
	 1uprn0B2QrOhcy8XZdZUzwXlMsBu6WzWHw9/whwNn4ypdO8tUJMQzeY9g/A4WOZFeo
	 085VnnBCkatcqcBCe5erL1tzysY61Z5BkLdWnJZDAJc1y6+7EyTwqPMAcOq87UbTuB
	 la4VA2JcMDi3MNIaZaIEoPo+ZCCmGtU9RAHte5L4NabJ4lvOq8bQ+7o1u2R9TvrTNm
	 1i5U52wNajiYA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 1F3A6C53BC6; Mon, 25 Dec 2023 10:19:29 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218266] Need article about Linux shutdown process
Date: Mon, 25 Dec 2023 10:19:28 +0000
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
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218266-11311-BPIAt6Olg4@https.bugzilla.kernel.org/>
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

--- Comment #6 from Rajesh (r.pandian@gmail.com) ---
H(In reply to Alexander from comment #5)
> Thanks for the code, I tested it. On my machine it does not respond to
> system reboots. That is, the SIGTERM signal does not reach the program. In
> the log there is only "ok..". If I send a signal explicitly (killall -sTE=
RM
> a.out) =E2=80=9CReceived signal is: 15=E2=80=9D appears in the log. I tes=
ted it on different
> kernels: both distribution and self-assembled ones. Both with user rights
> for the program and with superuser rights by setting set uid root. Maybe
> it's a distribution feature (I'm using Debian sid) that the signal reaches
> systemd, but not other programs?

Hi Alexander,

Merry xmas and I come bearing gifts!=20

So signal is not a posix standard and hence it's not working across differe=
nt
flavours.

Sigaction is the posix standard. There is a lot to sigaction and hence I wo=
n't
be going down that road. Instead let me give a a dummy code which works and
also a hint.

Your process below needs to rely on systemd. If I run as a standalone proce=
ss
it sometimes misses the signal. So the realiable way is to configure the be=
low
as a systemd. I have given below the systemd config too for my below code t=
hat
runs as service "dummy.service". Refer to systemd docs on how to configure.=
=20

Note: Tested the below in Ubuntu 22.04.4, deian trixie sid (test)


 /* Code for handling sigaction=20
 * Create those directories that we are removing e.g rmdir("session");
 */

#include <signal.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

volatile sig_atomic_t FLAG;=20
volatile sig_atomic_t fd;

void signalHandler(int signal) {
   FLAG=3D0;
   write(fd,"Shutdown\n",9);
   rmdir("delete-this");
   rmdir("session");
   fsync(fd);
   _exit(0);
}

int main() {
   FLAG =3D 1;
   struct sigaction act;
   act.sa_handler =3D &signalHandler;
   sigaction(SIGTERM,&act,NULL); //calling sigaction to follow posix std
   fd =3D fopen("/home/duke/output.log",O_WRONLY|O_CREAT|O_TRUNC,0644);
   while (FLAG) {
      write(fd,"Write\n",6);
      sleep(1);
   }
}


/* Systemd config

Note that you this is just a sample and should never be used as is in a
prodcution as I didn't give much thought about running this in production as
this is a demo */


[Unit]
Description=3D"test"

[Service]
Type=3Dsimple
User=3Droot
WorkingDirectory=3D/home/duke
ExecStart=3D/home/rajesh/rebooter
Restart=3D always
RestartSec=3D3

[Install]
WantedBy=3Dreboot.target


Now you run systemctl start dummy.service and reboot and your directories
should go away and an entry in the output.log

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

