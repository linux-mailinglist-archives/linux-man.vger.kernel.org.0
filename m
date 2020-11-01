Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EE9B2A2263
	for <lists+linux-man@lfdr.de>; Mon,  2 Nov 2020 00:32:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727387AbgKAXcR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Nov 2020 18:32:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727062AbgKAXcR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Nov 2020 18:32:17 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE19BC0617A6
        for <linux-man@vger.kernel.org>; Sun,  1 Nov 2020 15:32:16 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id y12so12525300wrp.6
        for <linux-man@vger.kernel.org>; Sun, 01 Nov 2020 15:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B+rP3TYKrHQd7/UrEeJtHfmKrq28K14JkkRY2sqFtCw=;
        b=lVaheouPXsPC1cmmDx7ee4QXRWBdAjzEoeMQHLHp/unPqV6FzQLjdvjx4yRcYyXMZS
         RtgaofmdDXsVkBL3JNdCAVA4qeLhrwmysI5ZYnLg8aL+ERwQpAEMk3oFXoWupXHUqwrk
         FsEnwsGw6mblzznk3u4KgEMPncJreCz3pEKZYDxtGhVW88S3PTYor/YpU+qEmlQT6NGg
         3GhDLINYFfBs3VejaFyksrFSUB1nxs4lQqVMWV+CNkqus6bV7HXGXlDMeUrCVqNSaJ4u
         dfAHcnRTKi6llfaSk0ezZqa41QwEUFEwqLm1e8KG+j8ahdiMQfX7glUotVZPMVcVYAmV
         o6mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B+rP3TYKrHQd7/UrEeJtHfmKrq28K14JkkRY2sqFtCw=;
        b=LnJdUvFZRyz4sssQ7gp38c5/0Ukvf1cbaUqenHZ95n5jcEyaGMr8IYJwqmdcSf7Jrh
         VOqqIgcXNB5lqWRd6VHKeLq52IWxE1maiIBKhny3cUTjTfGSIgBqRkX5B81p2bWzBg85
         k+N92Nnan65f97KMkU4YAG+VIyX961qClZFgQU0Xf0ecEqDm/6092s+yD02K7lIFpP4J
         dC2K9SvFgaWHaKidk8ntAwn53s7gltmM2cELsgD7Q9st3pG1Xi5iBr7UOfD0IompVSMk
         ESR6yo1xAIRXBRWJh2cY2fyf3Bw/8I9NTdDEEkO0ckYchBwsYrN9Cj+mwQVv/3gwzRuO
         R9XA==
X-Gm-Message-State: AOAM533JdN0u3XzXlUrTfh61tBhugPozLhLimZohBWkJjnLBfN6K7lQV
        mybkjFoLMrbPJKLzFQ0NL3Q=
X-Google-Smtp-Source: ABdhPJwu/VoHC0pIKjgDk9yKf3Pc16KpGvbQK46HWN1IcJtm5SBrxcUV5asoy0o+Xoi4bGMu9aNSfQ==
X-Received: by 2002:adf:fd8a:: with SMTP id d10mr16163441wrr.85.1604273535448;
        Sun, 01 Nov 2020 15:32:15 -0800 (PST)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i6sm7047818wma.42.2020.11.01.15.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2020 15:32:14 -0800 (PST)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, andi@firstfloor.org, jmoyer@redhat.com
Subject: [PATCH v2] io_cancel.2, io_destroy.2, io_getevents.2, io_setup.2, io_submit.2: SYNOPSIS: s/io_context_t/aio_context_t/
Date:   Mon,  2 Nov 2020 00:31:43 +0100
Message-Id: <20201101233142.8812-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <edd2fd6e-75b4-bc99-e930-58ea02d7c6ac@gmail.com>
References: <edd2fd6e-75b4-bc99-e930-58ea02d7c6ac@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Linux uses aio_context_t for these syscalls,
and it's the type provided by <linux/aio_abi.h>.
Use it in the SYNOPSIS.

libaio uses 'io_context_t', but that difference is already noted in NOTES.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---


On 2020-11-01 19:02, Michael Kerrisk (man-pages) wrote:
> On 11/1/20 2:55 PM, Alejandro Colomar wrote:
>> Linux uses aio_context_t for these syscalls,
>> and it's the type provided by <linux/aio_abi.h>.
>> Use it in the SYNOPSIS.
>>
>> libaio uses 'io_context_t', but that difference is already noted in NOTES.
>
> Hey Alex,
>
> I think your patch is correct. But I see that I changed these prototypes
> a few years back after reports from Jeff Moyer and Andi Kleen. The
> situation is confusing.
>
> Could I ask you to rewrite this patch to add the following
> immediately after the DESCRIPTION heading in each page:
>
> [[
> Note: this page describes the raw Linux system call interface.
> the wrapper functions provided by _libaio_ use a differnt type for
> the _ctx_id_ argument. See NOTES.
> ]]
>
> This will save me or someone else in the future perhaps
> reverting your fix!
>
> Thanks,
>
> Michael

Sure :)

Cheers,

Alex


 man2/io_cancel.2    | 11 ++++++++++-
 man2/io_destroy.2   | 11 ++++++++++-
 man2/io_getevents.2 | 11 ++++++++++-
 man2/io_setup.2     | 11 ++++++++++-
 man2/io_submit.2    | 11 ++++++++++-
 5 files changed, 50 insertions(+), 5 deletions(-)

diff --git a/man2/io_cancel.2 b/man2/io_cancel.2
index 68129896e..6ce41bf7a 100644
--- a/man2/io_cancel.2
+++ b/man2/io_cancel.2
@@ -11,13 +11,22 @@ io_cancel \- cancel an outstanding asynchronous I/O operation
 .nf
 .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
 .PP
-.BI "int io_cancel(io_context_t " ctx_id ", struct iocb *" iocb ,
+.BI "int io_cancel(aio_context_t " ctx_id ", struct iocb *" iocb ,
 .BI "              struct io_event *" result );
 .fi
 .PP
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
+.IR Note :
+this page describes the raw Linux system call interface.
+The wrapper functions provided by
+.I libaio
+use a different type for the
+.I ctx_id
+argument.
+See NOTES.
+.PP
 The
 .BR io_cancel ()
 system call
diff --git a/man2/io_destroy.2 b/man2/io_destroy.2
index e7cdf0203..fed749c49 100644
--- a/man2/io_destroy.2
+++ b/man2/io_destroy.2
@@ -11,12 +11,21 @@ io_destroy \- destroy an asynchronous I/O context
 .nf
 .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
 .PP
-.BI "int io_destroy(io_context_t " ctx_id );
+.BI "int io_destroy(aio_context_t " ctx_id );
 .fi
 .PP
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
+.IR Note :
+this page describes the raw Linux system call interface.
+The wrapper functions provided by
+.I libaio
+use a different type for the
+.I ctx_id
+argument.
+See NOTES.
+.PP
 The
 .BR io_destroy ()
 system call
diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
index cf616593b..2b13234c1 100644
--- a/man2/io_getevents.2
+++ b/man2/io_getevents.2
@@ -12,7 +12,7 @@ io_getevents \- read asynchronous I/O events from the completion queue
 .BR "#include <linux/aio_abi.h>" "         /* Defines needed types */"
 .BR "#include <linux/time.h>" "            /* Defines 'struct timespec' */"
 .PP
-.BI "int io_getevents(io_context_t " ctx_id ", long " min_nr ", long " nr ,
+.BI "int io_getevents(aio_context_t " ctx_id ", long " min_nr ", long " nr ,
 .BI "                 struct io_event *" events \
 ", struct timespec *" timeout );
 .fi
@@ -20,6 +20,15 @@ io_getevents \- read asynchronous I/O events from the completion queue
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
+.IR Note :
+this page describes the raw Linux system call interface.
+The wrapper functions provided by
+.I libaio
+use a different type for the
+.I ctx_id
+argument.
+See NOTES.
+.PP
 The
 .BR io_getevents ()
 system call
diff --git a/man2/io_setup.2 b/man2/io_setup.2
index 7b07b51c1..25ff61c65 100644
--- a/man2/io_setup.2
+++ b/man2/io_setup.2
@@ -11,12 +11,21 @@ io_setup \- create an asynchronous I/O context
 .nf
 .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
 .PP
-.BI "int io_setup(unsigned " nr_events ", io_context_t *" ctx_idp );
+.BI "int io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
 .fi
 .PP
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
+.IR Note :
+this page describes the raw Linux system call interface.
+The wrapper functions provided by
+.I libaio
+use a different type for the
+.I ctx_idp
+argument.
+See NOTES.
+.PP
 The
 .BR io_setup ()
 system call
diff --git a/man2/io_submit.2 b/man2/io_submit.2
index 7fbc9d7ae..36dc483e8 100644
--- a/man2/io_submit.2
+++ b/man2/io_submit.2
@@ -12,13 +12,22 @@ io_submit \- submit asynchronous I/O blocks for processing
 .nf
 .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
 .PP
-.BI "int io_submit(io_context_t " ctx_id ", long " nr \
+.BI "int io_submit(aio_context_t " ctx_id ", long " nr \
 ", struct iocb **" iocbpp );
 .fi
 .PP
 .IR Note :
 There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
+.IR Note :
+this page describes the raw Linux system call interface.
+The wrapper functions provided by
+.I libaio
+use a different type for the
+.I ctx_id
+argument.
+See NOTES.
+.PP
 The
 .BR io_submit ()
 system call
-- 
2.28.0

