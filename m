Return-Path: <linux-man+bounces-4374-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F9ECAC043
	for <lists+linux-man@lfdr.de>; Mon, 08 Dec 2025 05:15:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11791300FE08
	for <lists+linux-man@lfdr.de>; Mon,  8 Dec 2025 04:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 550D52F3613;
	Mon,  8 Dec 2025 04:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuN1UYKG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE68A2E7BDF
	for <linux-man@vger.kernel.org>; Mon,  8 Dec 2025 04:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765167305; cv=none; b=noC6q/vv6yyNkp8Q3WwRG+A3Ud+mx2XavhowHntzKNDsDJe6yPdvziIMK+zH9p430AOrRYNwjY/A6cn/DAg8UBiXwjMYPACRHHzpd9vO2BSZ2MyJjTv0+0zpmOVvCeP+SWL65BMrdqV5M8yk4lRhO6x+jsbaE9tKL2BbrdxPshQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765167305; c=relaxed/simple;
	bh=ZsSx8aNkEVhLh65JnSz4cwh0ZhAtO7nDvLiOLtjVUl4=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=E9c4l+BGahj0VTMc1NbN6YYMRqQB/rZAPMJMrinnL8adtveNJQHDDuQM5rGVN0zE1oJkOBsmVDWJ+gfzkaDEWV9xES/0tkln+db781PBYr2wz6p0CSEC9ZbEV9rXvzsHr7wBhcOAnhdTHneWpNtfVj/06ogijPa/zY9JMwBTuTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuN1UYKG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 55171C113D0
	for <linux-man@vger.kernel.org>; Mon,  8 Dec 2025 04:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765167305;
	bh=ZsSx8aNkEVhLh65JnSz4cwh0ZhAtO7nDvLiOLtjVUl4=;
	h=From:To:Subject:Date:From;
	b=IuN1UYKGwkEfVdaakTY6HJKHxH9aNFWaEqfoI0oWC4c3YSbMv33RxsMW8Ur2tBVze
	 rP/xWRW8ISutAcKB7uPZvjn+L+Fdo2bGHOVwbSAe1Lbc0ZAhUQuySgUjuyQRBVdAqV
	 V5B6V8kYjnEsrM5KhTeBAYqDkBrh870Oyom09TlJwWpqtLOJ+SReEl+VWDA4k3KbnK
	 8c6IR09kigrgTtMh5QpPzlm7QOp8ZWzOwieB7s5j74nfe61pa3E8qMrscYw9047bX1
	 94c4xqVDrl9mj0Cpnb/ymdpbvSB0QueOIf1d0Z0N//11X43Sptmopms3gjavYyEOtR
	 TGGvQQcErqGPA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 494FBC53BC9; Mon,  8 Dec 2025 04:15:05 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220845] New: imprecise 'close_range' description of
 'CLOSE_RANGE_UNSHARE'
Date: Mon, 08 Dec 2025 04:15:04 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: matthew.fernandez@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-220845-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220845

            Bug ID: 220845
           Summary: imprecise 'close_range' description of
                    'CLOSE_RANGE_UNSHARE'
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: enhancement
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: matthew.fernandez@gmail.com
        Regression: No

I=E2=80=99m looking into some more subtle behaviours of `close_range`. The =
man page
describes the effect of the `CLOSE_RANGE_UNSHARE` flag as:

> Unshare the specified file descriptors from any other processes before
> closing them, avoiding races with other threads sharing the file descript=
or
> table.

This sounds as if it unshares _only_ the file descriptors included in the g=
iven
range. E.g. `close_range(1, 2, CLOSE_RANGE_UNSHARE)` would unshare FDs 1 an=
d 2
but not 3. This surprised me as I thought it was only possible to share an
entire file descriptor table, not only certain file descriptors within that
table.

I wrote the attached program below to confirm my understanding; `close_rang=
e(=E2=80=A6,
CLOSE_RANGE_UNSHARE)` appears to unshare the entire file descriptor table, =
not
just the specified range. Is this correct? If so, do you think the wording
should be adjusted to make this more precise? I=E2=80=99m not sure if my mi=
sreading
here is a common misunderstanding.

--

// $ gcc -std=3Dc23 -Wall -Wextra main.c
// $ ./a.out
// a.out: main.c:69: main: Assertion `r1 =3D=3D 0' failed.
// [2]    7961 IOT instruction (core dumped)  ./a.out
// $ gcc -DCLOSE_RANGE -std=3Dc23 -Wall -Wextra main.c
// $ ./a.out
//

#define _GNU_SOURCE
#include <assert.h>
#include <fcntl.h>
#include <linux/close_range.h>
#include <sched.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <unistd.h>

static int a;
static int b;

static int child(void *) {

  // close both FDs
#ifdef CLOSE_RANGE
  const int r1 =3D close_range(a, a, CLOSE_RANGE_UNSHARE);
#else
  const int r1 =3D close(a);
#endif
  assert(r1 =3D=3D 0);
  const int r2 =3D close(b);
  assert(r2 =3D=3D 0);

  return 0;
}

int main(void) {

  // create two FDs we=E2=80=99ll share to the child
  a =3D open("/dev/null", O_RDONLY);
  assert(a >=3D 0);
  b =3D open("/dev/null", O_RDONLY);
  assert(b >=3D 0);
  assert(b > a);

  // create a stack for our upcoming child
  enum { STACK_SIZE =3D 1024 * 1024 };
  char *const stack =3D mmap(NULL, STACK_SIZE, PROT_READ | PROT_WRITE,
                           MAP_PRIVATE | MAP_ANONYMOUS | MAP_STACK, -1, 0);
  assert(stack !=3D MAP_FAILED);

#ifdef __hppa__
  char *const stack_top =3D stack;
#else
  char *const stack_top =3D stack + STACK_SIZE;
#endif

  // create a child who shares our file descriptor table
  const pid_t pid =3D clone(child, stack_top, CLONE_FILES, NULL);
  assert(pid >=3D 0);

  // wait for the child to finish
  int status;
  const pid_t r =3D waitpid(pid, &status, __WALL);
  assert(r =3D=3D pid);
  assert(WIFEXITED(status) && WEXITSTATUS(status) =3D=3D 0);

  // try closing our shared files
  const int r1 =3D close(a);
  assert(r1 =3D=3D 0);
  const int r2 =3D close(b);
  assert(r2 =3D=3D 0);

  (void)munmap(stack, STACK_SIZE);

  return 0;
}

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

