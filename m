Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B4501DFF21
	for <lists+linux-man@lfdr.de>; Sun, 24 May 2020 15:30:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728377AbgEXNak (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 May 2020 09:30:40 -0400
Received: from smtprelay02.ispgateway.de ([80.67.31.25]:50264 "EHLO
        smtprelay02.ispgateway.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbgEXNak (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 May 2020 09:30:40 -0400
Received: from [37.4.254.242] (helo=[192.168.0.28])
        by smtprelay02.ispgateway.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92.3)
        (envelope-from <t.piekarski@deloquencia.de>)
        id 1jcqaf-0004SK-En; Sun, 24 May 2020 15:22:57 +0200
From:   Thomas Piekarski <t.piekarski@deloquencia.de>
Subject: [PATCH] iopl.2: Changing description of permissions set per-process
 to per-thread
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, victorm007@yahoo.com
Message-ID: <45693d06-c780-890f-8e5a-d22267722b29@deloquencia.de>
Date:   Sun, 24 May 2020 15:22:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Df-Sender: dC5waWVrYXJza2lAZGVsb3F1ZW5jaWEuZGU=
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

iopl is setting permissions for port-mapped I/O not per-process but only 
for threads and its children.

See https://bugzilla.kernel.org/show_bug.cgi?id=205317

Reported-by: victorm007@yahoo.com
Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>


---


1. Test case if permissions are granted per-process or per-thread

I took the opportunity to dig into PMIO and granting permissions with 
iopl and ioperm.

Wrote the following code in which two threads are created and try to 
read some data with inb(). First thread (read_from_sleepy_child) is 
created before permissions are granted (but is delayed) and the second 
one (read_from_child) after that.

If those permissions would be granted on process level should the first 
thread not succeed?

I hope I did not make any mistake, applied threading well and can solve 
this issue as well as support the discussion at LKML.

2. Test Code

#include <pthread.h>
#include <stdio.h>
#include <sys/io.h>
#include <unistd.h>

#define PORT 0x378 // lp0

void *read_from_sleepy_child()
{
   sleep(3);

   // The inb() will fail due to missing permissions and it'll segfault
   // although permissions are acquired before threads are joined.
   // When permissions are set per process this should work.
   printf("Read anything from (sleepy) child thread (%x).\n", inb(PORT));

   return NULL;
}

void *read_from_child()
{
   // The inb() will succeed due to permissions are inherited to
   // childs after they got acquired with either iopl or ioperm
   printf("Read anything from child thread (%x).\n", inb(PORT));

   return NULL;
}

int main()
{
   pthread_t delayed_thread, thread;

   pthread_create(&delayed_thread, NULL, read_from_sleepy_child, NULL);

   iopl(3);
   // ioperm(0, 0xFFFF, 1); // the same segfault

   // The inb() will succeed due to being the main, default thread
   // where permissions got acquired in first place
   printf("Read anything from main thread (%x).\n", inb(PORT));

   pthread_create(&thread, NULL, read_from_child, NULL);
   pthread_join(delayed_thread, NULL);
   pthread_join(thread, NULL);

   return 0;
}


3. Patch

  man2/iopl.2 | 6 +++---
  1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/iopl.2 b/man2/iopl.2
index e5b216a14..329095808 100644
--- a/man2/iopl.2
+++ b/man2/iopl.2
@@ -39,7 +39,7 @@ iopl \- change I/O privilege level
  .BI "int iopl(int " level );
  .SH DESCRIPTION
  .BR iopl ()
-changes the I/O privilege level of the calling process,
+changes the I/O privilege level of the calling thread,
  as specified by the two least significant bits in
  .IR level .
  .PP
@@ -50,7 +50,7 @@ Since these X servers require access to all 65536 I/O 
ports, the
  call is not sufficient.
  .PP
  In addition to granting unrestricted I/O port access, running at a higher
-I/O privilege level also allows the process to disable interrupts.
+I/O privilege level also allows the thread to disable interrupts.
  This will probably crash the system, and is not recommended.
  .PP
  Permissions are not inherited by the child process created by
@@ -79,7 +79,7 @@ is greater than 3.
  This call is unimplemented.
  .TP
  .B EPERM
-The calling process has insufficient privilege to call
+The calling thread has insufficient privilege to call
  .BR iopl ();
  the
  .B CAP_SYS_RAWIO
-- 
2.20.1
