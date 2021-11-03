Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7065444341
	for <lists+linux-man@lfdr.de>; Wed,  3 Nov 2021 15:17:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231517AbhKCOUM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Nov 2021 10:20:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230472AbhKCOUJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Nov 2021 10:20:09 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6029AC061203;
        Wed,  3 Nov 2021 07:17:32 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id z11-20020a1c7e0b000000b0030db7b70b6bso4748050wmc.1;
        Wed, 03 Nov 2021 07:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=t6rIdjDXk6ljG0KS5GNyyKZHnfu2gQXbvrfcvDn+xl4=;
        b=hrch5JtQDFJnq3lq0m5EhCrPWoHHjKdQqH4Arc9WrY/idHuA6TfqtKZjh/UrprK9Gb
         evH2xPRb9lwLo35vjVv2A8GqXVpDgEUqirUo3YSWku4omLpdlh/dgcuCmU9Vgqy4j1m0
         SZd2oZg/4szmz1tO90GJ5KPGNj5LEQ0hTWGGD5isOxd5Q99qM2tLi2YiVyvumcz2kG9Q
         aPoj3enS7L0h1DuGpr/r938PkLRD+O75Dcqat3CTujCQ8XGPMsyxkDvjsd0rE9rGF3gE
         +BvYAwmLOlX9y5QBqBP9aHDgf4TzL5sFB5qWWtKoj7M6s7SIe1xe50y6Vl5z0E6vdlwI
         i3AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=t6rIdjDXk6ljG0KS5GNyyKZHnfu2gQXbvrfcvDn+xl4=;
        b=uhcqHYGAX8mN2R40Yw0ntdZaUTBjH8bI+w0Du47joCq/HobVaUx0srHPOLrmaUtrGl
         LPcXB4vKOOJPAxqPx2lXutKmJu6LnNQoUNVvqXlIuiZSYlaGn78mRMNfG3JH5ZpRAdZ5
         qxS4Xmz2MNJa0AqfliQz60h6gIMK33qP2ubM6Fi1zgZQ81A2sbEysmfT1e9kzcUpB2s0
         5Lk01LZZEwvrxcv9yubHamgoPRy91HfYve6LYwKcHYJJ/QYYXwYZquUYvx+vEl6vfTJ0
         cygIQQwRT9wqzzcCrNhZooJx2TRMngVZeNpuF7tMV5Z0UewNqMi/XTBIMpXQOkmXlVN7
         A0EA==
X-Gm-Message-State: AOAM533EvO2Hc4yD0dueJLLtZ2mwpUYohRbyuVeSeKTxfhhOCTcmGtAZ
        Aky81kBS6DShDhueoyBtX2RF2DMA0Ik=
X-Google-Smtp-Source: ABdhPJwkwMZm6zOclFKT2/+Av11/6XqvPPtrn/Fw+w5FaWhMfC3cEp9XIeVeammfVyQOX2BwA92T1w==
X-Received: by 2002:a1c:4681:: with SMTP id t123mr15653414wma.83.1635949050756;
        Wed, 03 Nov 2021 07:17:30 -0700 (PDT)
Received: from [10.8.0.130] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id a9sm2092285wrt.66.2021.11.03.07.17.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Nov 2021 07:17:30 -0700 (PDT)
Message-ID: <94dca922-87b8-eb07-8bdb-f5803d6ffe21@gmail.com>
Date:   Wed, 3 Nov 2021 15:17:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v4 0/4] Add Landlock man pages
Content-Language: en-US
To:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Jann Horn <jannh@google.com>, Kees Cook <keescook@chromium.org>,
        landlock@lists.linux.dev, Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@linux.microsoft.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Jonathan Corbet <corbet@lwn.net>
References: <20210818155931.484070-1-mic@digikod.net>
 <5020f3da-1022-d8ee-3e8f-a62920db1c87@digikod.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <5020f3da-1022-d8ee-3e8f-a62920db1c87@digikod.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mickaël,

On 11/3/21 13:07, Mickaël Salaün wrote:
> Alejandro, is there something more to do or is it OK for you?

I applied the patchset, plus a few minor fixes (see below).

Thanks!

Alex

> 
> On 18/08/2021 17:59, Mickaël Salaün wrote:
>> From: Mickaël Salaün <mic@linux.microsoft.com>
>>
>> Hi,
>>
>> These four documents give a global overview of Landlock and explain each
>> system calls.  This is mainly a formatting of the current kernel
>> documentation with some new additional details.
>>
>> This fourth patch series fixes spelling issues pointed out by Alejandro
>> Colomar and Branden Robinson.  I also removed some recipients.
>>
>> This patch series can be found in a Git repository:
>> https://github.com/landlock-lsm/man-pages/commits/landlock-v4
>>
>> Previous version:
>> https://lore.kernel.org/landlock/20210730144116.332091-1-mic@digikod.net/
>>
>> Regards,
>>
>> Mickaël Salaün (4):
>>    landlock.7: Add a new page to introduce Landlock
>>    landlock_create_ruleset.2: Document new syscall
>>    landlock_add_rule.2: Document new syscall
>>    landlock_restrict_self.2: Document new syscall
>>
>>   man2/landlock_add_rule.2       | 144 +++++++++++++
>>   man2/landlock_create_ruleset.2 | 139 +++++++++++++
>>   man2/landlock_restrict_self.2  | 133 ++++++++++++
>>   man7/landlock.7                | 361 +++++++++++++++++++++++++++++++++
>>   4 files changed, 777 insertions(+)
>>   create mode 100644 man2/landlock_add_rule.2
>>   create mode 100644 man2/landlock_create_ruleset.2
>>   create mode 100644 man2/landlock_restrict_self.2
>>   create mode 100644 man7/landlock.7
>>
>>
>> base-commit: 7127973e0c8ca36fda1f5d2d0adae04d61fa0d01
>>

---
     landlock_add_rule.2, landlock_create_ruleset.2, 
landlock_restrict_self.2, landlock.7: Minor tweaks to Mickaël's patches

     - exit(EXIT_FAILURE) instead of return 1, for consistency with the
       rest of the manual pages.
     - Use old declarations: variables defined at the top, separate
       from code.  Initialization other than zero doesn't belong there.
     - Don't break URIs in weird ways (a trailing slash on a new line
       would be weird).
     - Break URIs after the slash; not before.  Per Branden's advise.
     - Use uint32_t instead of __u32 in prototypes.
     - tfix
     - A few semantic newline improvements.
     - ffix

     Cc: Mickaël Salaün <mic@digikod.net>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man2/landlock_add_rule.2 b/man2/landlock_add_rule.2
index eafb8f820..c3f6e84e0 100644
--- a/man2/landlock_add_rule.2
+++ b/man2/landlock_add_rule.2
@@ -34,10 +34,12 @@ landlock_add_rule \- add a new Landlock rule to a 
ruleset
  .PP
  .BI "int syscall(SYS_landlock_add_rule, int " ruleset_fd ,
  .BI "            enum landlock_rule_type " rule_type ,
-.BI "            const void *" rule_attr ", __u32 " flags );
+.BI "            const void *" rule_attr ", uint32_t " flags );
+.fi
  .SH DESCRIPTION
  A Landlock rule describes an action on an object.
-An object is currently a file hierarchy, and the related filesystem actions
+An object is currently a file hierarchy,
+and the related filesystem actions
  are defined with a set of access rights.
  This
  .BR landlock_add_rule ()
@@ -114,13 +116,15 @@ is 0).
  .TP
  .B EBADF
  .I ruleset_fd
-is not a file descriptor for the current thread, or a member of
+is not a file descriptor for the current thread,
+or a member of
  .I rule_attr
  is not a file descriptor as expected.
  .TP
  .B EBADFD
  .I ruleset_fd
-is not a ruleset file descriptor, or a member of
+is not a ruleset file descriptor,
+or a member of
  .I rule_attr
  is not the expected file descriptor type.
  .TP
diff --git a/man2/landlock_create_ruleset.2 b/man2/landlock_create_ruleset.2
index e1ca4bcf8..11a8f08de 100644
--- a/man2/landlock_create_ruleset.2
+++ b/man2/landlock_create_ruleset.2
@@ -34,7 +34,8 @@ landlock_create_ruleset \- create a new Landlock ruleset
  .PP
  .BI "int syscall(SYS_landlock_create_ruleset,
  .BI "            const struct landlock_ruleset_attr *" attr ,
-.BI "            size_t " size " , __u32 " flags );
+.BI "            size_t " size " , uint32_t " flags );
+.fi
  .SH DESCRIPTION
  A Landlock ruleset identifies a set of rules (i.e., actions on objects).
  This
@@ -55,14 +56,14 @@ It points to the following structure:
  .in +4n
  .EX
  struct landlock_ruleset_attr {
-       __u64 handled_access_fs;
+    __u64 handled_access_fs;
  };
  .EE
  .in
  .IP
  .I handled_access_fs
-is a bitmask of actions that is handled by this ruleset and should then be
-forbidden if no rule explicitly allow them
+is a bitmask of actions that is handled by this ruleset and
+should then be forbidden if no rule explicitly allows them
  (see
  .B Filesystem actions
  in
@@ -98,12 +99,13 @@ All features documented in these man pages are 
available with the version
  .SH RETURN VALUE
  On success,
  .BR landlock_create_ruleset ()
-returns a new Landlock ruleset file descriptor, or a Landlock ABI version
+returns a new Landlock ruleset file descriptor,
+or a Landlock ABI version,
  according to
  .IR flags .
  .SH ERRORS
  .BR landlock_create_ruleset ()
-can failed for the following reasons:
+can fail for the following reasons:
  .TP
  .B EOPNOTSUPP
  Landlock is supported by the kernel but disabled at boot time.
diff --git a/man2/landlock_restrict_self.2 b/man2/landlock_restrict_self.2
index 4b10997e2..77c71bbf8 100644
--- a/man2/landlock_restrict_self.2
+++ b/man2/landlock_restrict_self.2
@@ -33,7 +33,7 @@ landlock_restrict_self \- enforce a Landlock ruleset
  .BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " 
constants */"
  .PP
  .BI "int syscall(SYS_landlock_restrict_self, int " ruleset_fd ,
-.BI "            __u32 " flags );
+.BI "            uint32_t " flags );
  .SH DESCRIPTION
  Once a Landlock ruleset is populated with the desired rules, the
  .BR landlock_restrict_self ()
@@ -42,13 +42,13 @@ See
  .BR landlock (7)
  for a global overview.
  .PP
-A thread can be restricted with multiple rulesets that are then composed
-together to form the thread's Landlock domain.
-This can be seen as a stack of rulesets but it is implemented in a more
-efficient way.
-A domain can only be updated in such a way that the constraints of each
-past and future composed rulesets will restrict the thread and its future
-children for their entire life.
+A thread can be restricted with multiple rulesets that are then
+composed together to form the thread's Landlock domain.
+This can be seen as a stack of rulesets but
+it is implemented in a more efficient way.
+A domain can only be updated in such a way that
+the constraints of each past and future composed rulesets
+will restrict the thread and its future children for their entire life.
  It is then possible to gradually enforce tailored access control policies
  with multiple independant rulesets coming from different sources
  (e.g., init system configuration, user session policy,
@@ -68,8 +68,8 @@ capability in its user namespace, or the thread must 
already have the
  bit set.
  As for
  .BR seccomp (2),
-this avoids scenarios where unprivileged processes can affect the behavior
-of privileged children (e.g., because of set-user-ID binaries).
+this avoids scenarios where unprivileged processes can affect
+the behavior of privileged children (e.g., because of set-user-ID 
binaries).
  If that bit was not already set by an ancestor of this thread,
  the thread must make the following call:
  .IP
@@ -91,7 +91,7 @@ On success,
  returns 0.
  .SH ERRORS
  .BR landlock_restrict_self ()
-can failed for the following reasons:
+can fail for the following reasons:
  .TP
  .B EOPNOTSUPP
  Landlock is supported by the kernel but disabled at boot time.
diff --git a/man7/landlock.7 b/man7/landlock.7
index 710e7feb7..80d9f2bf1 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -31,8 +31,9 @@ Landlock \- unprivileged access-control
  Landlock is an access-control system that enables any processes to
  securely restrict themselves and their future children.
  Because Landlock is a stackable Linux Security Module (LSM),
-it makes it possible to create safe security sandboxes as new security
-layers in addition to the existing system-wide access-controls.
+it makes it possible to create safe security sandboxes
+as new security layers in addition to
+the existing system-wide access-controls.
  This kind of sandbox is expected to help mitigate
  the security impact of bugs,
  and unexpected or malicious behaviors in applications.
@@ -128,8 +129,8 @@ Create (or rename or link) a symbolic link.
  .SS Layers of file path access rights
  Each time a thread enforces a ruleset on itself,
  it updates its Landlock domain with a new layer of policy.
-Indeed, this complementary policy is composed with the potentially other
-rulesets already restricting this thread.
+Indeed, this complementary policy is composed with the
+potentially other rulesets already restricting this thread.
  A sandboxed thread can then safely add more constraints to itself with a
  new enforced ruleset.
  .PP
@@ -165,8 +166,8 @@ From a Landlock policy point of view,
  each of the OverlayFS layers and merge hierarchies is standalone and
  contains its own set of files and directories,
  which is different from a bind mount.
-A policy restricting an OverlayFS layer will not restrict the resulted
-merged hierarchy, and vice versa.
+A policy restricting an OverlayFS layer will not restrict
+the resulted merged hierarchy, and vice versa.
  Landlock users should then only think about file hierarchies they want to
  allow access to, regardless of the underlying filesystem.
  .\"
@@ -244,9 +245,10 @@ See below for the description of filesystem actions.
  .PP
  .in +4n
  .EX
+struct landlock_ruleset_attr ruleset_attr = {0};
  int ruleset_fd;
-struct landlock_ruleset_attr ruleset_attr = {
-    .handled_access_fs =
+
+ruleset_attr.handled_access_fs =
          LANDLOCK_ACCESS_FS_EXECUTE |
          LANDLOCK_ACCESS_FS_WRITE_FILE |
          LANDLOCK_ACCESS_FS_READ_FILE |
@@ -259,13 +261,12 @@ struct landlock_ruleset_attr ruleset_attr = {
          LANDLOCK_ACCESS_FS_MAKE_SOCK |
          LANDLOCK_ACCESS_FS_MAKE_FIFO |
          LANDLOCK_ACCESS_FS_MAKE_BLOCK |
-        LANDLOCK_ACCESS_FS_MAKE_SYM,
-};
+        LANDLOCK_ACCESS_FS_MAKE_SYM;

  ruleset_fd = landlock_create_ruleset(&ruleset_attr, 
sizeof(ruleset_attr), 0);
-if (ruleset_fd < 0) {
+if (ruleset_fd == -1) {
      perror("Failed to create a ruleset");
-    return 1;
+    exit(EXIT_FAILURE);
  }
  .EE
  .in
@@ -285,19 +286,19 @@ with this file descriptor.
  .PP
  .in +4n
  .EX
+struct landlock_path_beneath_attr path_beneath = {0};
  int err;
-struct landlock_path_beneath_attr path_beneath = {
-    .allowed_access =
+
+path_beneath.allowed_access =
          LANDLOCK_ACCESS_FS_EXECUTE |
          LANDLOCK_ACCESS_FS_READ_FILE |
-        LANDLOCK_ACCESS_FS_READ_DIR,
-};
+        LANDLOCK_ACCESS_FS_READ_DIR;

  path_beneath.parent_fd = open("/usr", O_PATH | O_CLOEXEC);
-if (path_beneath.parent_fd < 0) {
+if (path_beneath.parent_fd == -1) {
      perror("Failed to open file");
      close(ruleset_fd);
-    return 1;
+    exit(EXIT_FAILURE);
  }
  err = landlock_add_rule(ruleset_fd, LANDLOCK_RULE_PATH_BENEATH,
                          &path_beneath, 0);
@@ -305,7 +306,7 @@ close(path_beneath.parent_fd);
  if (err) {
      perror("Failed to update ruleset");
      close(ruleset_fd);
-    return 1;
+    exit(EXIT_FAILURE);
  }
  .EE
  .in
@@ -322,7 +323,7 @@ privileges
  if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0)) {
      perror("Failed to restrict privileges");
      close(ruleset_fd);
-    return 1;
+    exit(EXIT_FAILURE);
  }
  .EE
  .in
@@ -334,7 +335,7 @@ The current thread is now ready to sandbox itself 
with the ruleset.
  if (landlock_restrict_self(ruleset_fd, 0)) {
      perror("Failed to enforce ruleset");
      close(ruleset_fd);
-    return 1;
+    exit(EXIT_FAILURE);
  }
  close(ruleset_fd);
  .EE
@@ -342,20 +343,20 @@ close(ruleset_fd);
  .PP
  If the
  .BR landlock_restrict_self (2)
-system call succeeds, the current thread is now restricted and this policy
-will be enforced on all its subsequently created children as well.
+system call succeeds, the current thread is now restricted and
+this policy will be enforced on all its subsequently created children 
as well.
  Once a thread is landlocked, there is no way to remove its security 
policy;
  only adding more restrictions is allowed.
  These threads are now in a new Landlock domain,
  merge of their parent one (if any) with the new ruleset.
  .PP
  Full working code can be found in
-.UR 
https://git.kernel.org\:/pub\:/scm\:/linux\:/kernel\:/git\:/stable\:/linux.git\:/tree\:/samples\:/landlock\:/sandboxer.c
+.UR 
https://git.kernel.org/\:pub/\:scm/\:linux/\:kernel/\:git/\:stable/\:linux.git/\:tree/\:samples/\:landlock/\:sandboxer.c
  .UE
  .SH SEE ALSO
  .BR landlock_create_ruleset (2),
  .BR landlock_add_rule (2),
  .BR landlock_restrict_self (2)
  .PP
-.UR https://landlock.io\:/
+.UR https://landlock.io/
  .UE


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
