Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46DDA4AC1EE
	for <lists+linux-man@lfdr.de>; Mon,  7 Feb 2022 15:57:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231223AbiBGOzz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Feb 2022 09:55:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1392342AbiBGO2m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Feb 2022 09:28:42 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFF5EC0401C2
        for <linux-man@vger.kernel.org>; Mon,  7 Feb 2022 06:28:38 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id r131so4451753wma.1
        for <linux-man@vger.kernel.org>; Mon, 07 Feb 2022 06:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=XFwwtBP/tetQVO0cceBgh3m2UNfCCfyNXtUm2ADjcnM=;
        b=H1Op6acbzHFboIDELGw2ea86UYu112syeUhqM/pw/cQ5n2dEIxILRu+74H8GJ/RJtQ
         D33raNINzP1mVGCYeCeSfhoL2GsIIiv4dunYIjsL2u5BJvRxRO5xQLCW8VzVrbO4SvfR
         +4IvoXXvZIsKg5VDtMyOHb7JMcJxrykT60xCTlZPguv0GQKa3/Wq7wtpuBoLq8ROJqt3
         jEu1JRw74Bg1R05W6JbT20y4tXN9HO0k6C7eshYvexiI/r76guqYeAeodwJsu1USbd1f
         x/IrUdHny+YFMYlPk78xXWbQJpFC6b65T7bD0AvXywq6yFt34rzZQ0qcDpJuboEg//6O
         i2FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=XFwwtBP/tetQVO0cceBgh3m2UNfCCfyNXtUm2ADjcnM=;
        b=p1I3isY9jniToChZL2TjgpV74b/dCc+OT2CF1i7Kcxn/ohbu0AME62QyCQ4RbEh95n
         BUyw9YU0C9yxxsLEQMBprQvPsTig44GtIL0UX7SvTKka6WClkTrgWZ7A4bDCUOcDCRVR
         mQRMfn3Ko92RSpbtOBHS087nQYGZS5zKBGH7q8DkKbL7u8QBtVy3/+/iqEpT8TWcUrrI
         LgrRtZUB+tdZ7Vx2sIfwyzKmICq/TsqLAaec/3Z46f4T4G+0Af3xdX2YPRO5fId2BbtO
         /LM1rd2e3Zkxdftfp7eCxpmlvC7Ok7Hr2GcD5vLEbTaYhcXWimdaq/zrqmcHgsg1QFS4
         Io4A==
X-Gm-Message-State: AOAM531524XCwPSK0xackWDyiq4mCXAOQhyHDdtn8zVOakLaedbxTc46
        UV/6MaOGfNbwXDnQrP5/hao=
X-Google-Smtp-Source: ABdhPJxAFGjss35vJQKS6WoqzDrSKd8BLQS/k+2o9VFHmAIIm3JPihpA7+GL/3w/+bKf0dLRCjhq1g==
X-Received: by 2002:a05:600c:35c8:: with SMTP id r8mr14694841wmq.142.1644244117244;
        Mon, 07 Feb 2022 06:28:37 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p2sm9272839wmc.33.2022.02.07.06.28.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Feb 2022 06:28:36 -0800 (PST)
Message-ID: <a2dee923-2c77-dd01-2e49-18fadcc74ea8@gmail.com>
Date:   Mon, 7 Feb 2022 15:28:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH] capabilities.7: improve internal references
Content-Language: en-US
To:     Kir Kolyshkin <kolyshkin@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20220204210021.1340700-1-kolyshkin@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220204210021.1340700-1-kolyshkin@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Kir,

On 2/4/22 22:00, Kir Kolyshkin wrote:
> Trying to make this man page easier to navigate.
> 
> Fix a few cases of "see above/below" without a specific reference to a
> subsection by quoting the subsection name (making it easier to look it up).
> Use the same formatting rule as used by some of the other existing
> references, i.e. italicise it.
> 
> For uniformity, remove words such as "the subsection" and "under", using
> "(see|described in) <subsection title> (above|below)" template.
> 
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>

Patch applied.  Thanks,

Alex
> ---
>  man7/capabilities.7 | 65 ++++++++++++++++++++++++++++-----------------
>  1 file changed, 41 insertions(+), 24 deletions(-)
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index c65524496..d524288b0 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -398,7 +398,7 @@ write a user ID mapping in a user namespace (see
>  .B CAP_SYS_ADMIN
>  .IR Note :
>  this capability is overloaded; see
> -.IR "Notes to kernel developers" ,
> +.I Notes to kernel developers
>  below.
>  .IP
>  .PD 0
> @@ -952,7 +952,9 @@ Since Linux 2.6.25, this is a per-thread capability set.
>  In older kernels, the capability bounding set was a system wide attribute
>  shared by all threads on the system.
>  .IP
> -For more details on the capability bounding set, see below.
> +For more details, see
> +.I Capability bounding set
> +below.
>  .TP
>  .IR Ambient " (since Linux 4.3)"
>  .\" commit 58319057b7847667f0c9585b9de0e8932b0fdb08
> @@ -983,12 +985,17 @@ this does not trigger the secure-execution mode described in
>  A child created via
>  .BR fork (2)
>  inherits copies of its parent's capability sets.
> -See below for a discussion of the treatment of capabilities during
> -.BR execve (2).
> +For details on how
> +.BR execve (2)
> +affects capabilities, see
> +.I Transformation of capabilities during execve()
> +below.
>  .PP
>  Using
>  .BR capset (2),
> -a thread may manipulate its own capability sets (see below).
> +a thread may manipulate its own capability sets; see
> +.I Programmatically adjusting capability sets
> +below.
>  .PP
>  Since Linux 3.2, the file
>  .I /proc/sys/kernel/cap_last_cap
> @@ -1042,7 +1049,9 @@ Enabling the file effective capability bit implies
>  that any file permitted or inheritable capability that causes a
>  thread to acquire the corresponding permitted capability during an
>  .BR execve (2)
> -(see the transformation rules described below) will also acquire that
> +(see
> +.I Transformation of capabilities during execve()
> +below) will also acquire that
>  capability in its effective set.
>  Therefore, when assigning capabilities to a file
>  .RB ( setcap (8),
> @@ -1080,7 +1089,7 @@ it automatically uses the version 2 scheme
>  .BR VFS_CAP_REVISION_3 " (since Linux 4.14)"
>  .\" commit 8db6c34f1dbc8e06aa016a9b829b06902c3e1340
>  Version 3 file capabilities are provided
> -to support namespaced file capabilities (described below).
> +to support namespaced file capabilities, described below.
>  .IP
>  As with version 2 file capabilities,
>  version 3 capability masks are 64 bits in size.
> @@ -1249,8 +1258,9 @@ its permitted and effective sets will be cleared.
>  For the treatment of capabilities when a process with a
>  user ID of zero performs an
>  .BR execve (2),
> -see below under
> -.IR "Capabilities and execution of programs by root" .
> +see
> +.I Capabilities and execution of programs by root
> +below.
>  .\"
>  .SS Safety checking for capability-dumb binaries
>  A capability-dumb binary is an application that has been
> @@ -1306,8 +1316,9 @@ If the real or effective user ID of the process is 0 (root),
>  then the file inheritable and permitted sets are ignored;
>  instead they are notionally considered to be all ones
>  (i.e., all capabilities enabled).
> -(There is one exception to this behavior, described below in
> -.IR "Set-user-ID-root programs that have file capabilities" .)
> +(There is one exception to this behavior, described in
> +.I Set-user-ID-root programs that have file capabilities
> +below.)
>  .IP 2.
>  If the effective user ID of the process is 0 (root) or
>  the file effective bit is in fact enabled,
> @@ -1346,8 +1357,9 @@ can be disabled using the securebits mechanism described below.
>  .\"
>  .\"
>  .SS Set-user-ID-root programs that have file capabilities
> -There is one exception to the behavior described under
> -.IR "Capabilities and execution of programs by root" .
> +There is one exception to the behavior described in
> +.I Capabilities and execution of programs by root
> +above.
>  If (a) the binary that is being executed has capabilities attached and
>  (b) the real user ID of the process is
>  .I not
> @@ -1611,17 +1623,18 @@ operation.
>  Setting this flag stops the kernel from adjusting the process's
>  permitted, effective, and ambient capability sets when
>  the thread's effective and filesystem UIDs are switched between
> -zero and nonzero values.
> -(See the subsection
> -.IR "Effect of user ID changes on capabilities" .)
> +zero and nonzero values. See
> +.I Effect of user ID changes on capabilities
> +above.
>  .TP
>  .B SECBIT_NOROOT
>  If this bit is set, then the kernel does not grant capabilities
>  when a set-user-ID-root program is executed, or when a process with
>  an effective or real UID of 0 calls
>  .BR execve (2).
> -(See the subsection
> -.IR "Capabilities and execution of programs by root" .)
> +(See
> +.I Capabilities and execution of programs by root
> +above.)
>  .TP
>  .B SECBIT_NO_CAP_AMBIENT_RAISE
>  Setting this flag disallows raising ambient capabilities via the
> @@ -1695,10 +1708,11 @@ or any descendant user namespace.
>  .PP
>  The rules about the transformation of the process's capabilities during the
>  .BR execve (2)
> -are exactly as described in the subsections
> -.IR "Transformation of capabilities during execve()"
> +are exactly as described in
> +.I Transformation of capabilities during execve()
>  and
> -.IR "Capabilities and execution of programs by root" ,
> +.I Capabilities and execution of programs by root
> +above,
>  with the difference that, in the latter subsection, "root"
>  is the UID of the creator of the user namespace.
>  .\"
> @@ -1709,8 +1723,9 @@ Traditional (i.e., version 2) file capabilities associate
>  only a set of capability masks with a binary executable file.
>  When a process executes a binary with such capabilities,
>  it gains the associated capabilities (within its user namespace)
> -as per the rules described above in
> -"Transformation of capabilities during execve()".
> +as per the rules described in
> +.I Transformation of capabilities during execve()
> +above.
>  .PP
>  Because version 2 file capabilities confer capabilities to
>  the executing process regardless of which user namespace it resides in,
> @@ -1732,7 +1747,9 @@ Namespaced file capabilities are recorded as version 3 (i.e.,
>  .I security.capability
>  extended attributes.
>  Such an attribute is automatically created in the circumstances described
> -above under "File capability extended attribute versioning".
> +in
> +.I File capability extended attribute versioning
> +above.
>  When a version 3
>  .I security.capability
>  extended attribute is created,

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
