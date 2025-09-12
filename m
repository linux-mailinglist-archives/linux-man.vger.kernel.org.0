Return-Path: <linux-man+bounces-3859-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBC0B55002
	for <lists+linux-man@lfdr.de>; Fri, 12 Sep 2025 15:50:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CDC1160FBA
	for <lists+linux-man@lfdr.de>; Fri, 12 Sep 2025 13:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 642B815855E;
	Fri, 12 Sep 2025 13:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcm/FHYY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E7C14EC62
	for <linux-man@vger.kernel.org>; Fri, 12 Sep 2025 13:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757685001; cv=none; b=Zr2HiaVlW4Otn7LllKRKx1dGARrHN7Pbj+ddX399RN14meED5q9nnJAN0gnU5PQqavzGyak0eM7eE1OzZG+ylzy2HqgS2xB+kFy2pkcoT5Y7coRd7YX6PdDkLfnUxBKdDjJtXN3yn1kogpA33V6fnc+9WPHEDbC1j2YMxKGS3Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757685001; c=relaxed/simple;
	bh=5CzAzdWseRR9jsSXtmcJp/4ePB5OUuMyUC95/7VSOkg=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=KHMOWB9uB+yP5wO2n2LY2c7969u3cOeys3iPpor1Kd/UBl31cF2xcckHoPGnyL5QxLT1WuZkTOE2mN00HgxHrYuunhKZzZJFgeFEZME+DKPtT3syRH6neU6n13CRSAZu7q5W9+Ievhpk8nI+AiC3jhNofhhXiJ4VeN1CELRGvKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcm/FHYY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB350C4CEFA
	for <linux-man@vger.kernel.org>; Fri, 12 Sep 2025 13:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757685000;
	bh=5CzAzdWseRR9jsSXtmcJp/4ePB5OUuMyUC95/7VSOkg=;
	h=From:To:Subject:Date:From;
	b=dcm/FHYYfU70vN3a2YxxdldKEzpaQ5byw+VmFyZUgE9exRm7D2yym4mvxs7nahpem
	 aIC2ek73eCJqU0eIN29YW7rCaijPxRQdh6YWkkhDQZiTgeI0bMEOIDedVc0iA48UV7
	 1/Ukx64JZmxZFrjpJgZtgyy6JIBHhglNC+ZWS/Ta9JZK/hq0Edzyu+hYgjnwLZ1yn2
	 QO1H3lbufWzk/thC9HvFn7iSkmkMWmracaC8BNMgXB7YzqBNvIN2Jl1TvPG+Cw7aJm
	 4yvV6ot1Sn38L+J3p9Jtqbc+nwL4gHSfBIbdPkwnsFZxjngGUa8ylFEWhHRiqJHLPM
	 cltfJUwrqIBpA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id B1668C3279F; Fri, 12 Sep 2025 13:50:00 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220569] New: [truncate(2) man page] after extending file extra
 bytes are not always zero
Date: Fri, 12 Sep 2025 13:50:00 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alanas.00+k@mail.ru
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-220569-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220569

            Bug ID: 220569
           Summary: [truncate(2) man page] after extending file extra
                    bytes are not always zero
           Product: Documentation
           Version: unspecified
          Hardware: AMD
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: alanas.00+k@mail.ru
        Regression: No

truncate(2) man page has this sentence:

If the file previously was shorter, it is extended, and the extended part r=
eads
as null bytes ('\0').

but it's not always true

how to cause truncate to extend file with non-zero bytes (run all commands =
as
root):

1. change working directory to ramfs mount (tmpfs same result):

mkdir r
mount -t ramfs asdf r
cd r

2. make create_weird_file.c file with content:

#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
int main(int argc,char**argv){
        if(argc!=3D2){
                puts("usage: create_weird_file /path/to/file");
                return 1;
        }
        int fd=3Dopen(argv[1],O_RDWR|O_CLOEXEC|O_CREAT|O_EXCL,0600);
        if(fd<0){
                printf("open error: %#m\n");
                return 1;
        }
        if(ftruncate(fd,1)){
                printf("ftruncate error: %#m\n");
                return 1;
        }
        void*mm=3Dmmap(NULL,4,PROT_READ|PROT_WRITE,MAP_SHARED,fd,0);
        if(mm=3D=3DMAP_FAILED){
                printf("mmap error: %#m\n");
                return 1;
        }
        *(int*)mm=3D1717859169;
}

3. make truncate_4.c file with content:

#include <stdio.h>
#include <unistd.h>
int main(int argc,char**argv){
        if(argc!=3D2){
                puts("usage: truncate_4 /path/to/file");
                return 1;
        }
        if(truncate(argv[1],4)){
                printf("truncate error: %#m\n");
                return 1;
        }
}

4. compile create_weird_file.c:

gcc -o create_weird_file create_weird_file.c

5. compile truncate_4.c

gcc -o truncate_4 truncate_4.c

6. create 1 byte file f:

./create_weird_file f

7. see file content and size:

xxd f

output for me is:

00000000: 61                                       a

8. truncate file f to 4 bytes:

./truncate_4 f

9. see file content and size:

xxd f

output for me is:

00000000: 6173 6466                                asdf

extra 3 bytes of file are "sdf" instead of "\0\0\0"

tested on 2 operating systems:
kde neon unstable, uname -r -v -m -p -i -o: 6.14.0-29-generic
#29~24.04.1-Ubuntu SMP PREEMPT_DYNAMIC Thu Aug 14 16:52:50 UTC 2 x86_64 x86=
_64
x86_64 GNU/Linux
opensuse tumbleweed, uname -r -v -m -p -i -o: 6.16.5-1-default #1 SMP
PREEMPT_DYNAMIC Thu Sep  4 15:51:43 UTC 2025 (642f24d) x86_64 x86_64 x86_64
GNU/Linux

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

