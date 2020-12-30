Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 237B72E79D8
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 14:57:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726689AbgL3N5b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 08:57:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726547AbgL3N5b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 08:57:31 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C7A9C061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 05:56:51 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id b73so15444270edf.13
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 05:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=R8tq2yJ2zyPeOMR53rw+Ay6/eBTIBZbFhCUrbnvml3s=;
        b=RyR3WUi7PxtVd7iDLdCZ0dZCLJi6DLNnLc626jrOPnOgFArFPJjqB1/VRWkC0NqD8A
         z3gfUZcqPe/Vos4HDxRuk8pYHhastczW765BsIG/AlRqArQEpb+SdVYFkcS4PkTJEq6N
         H7/vJ2XgsycC/VzYdXn2FNw/t6MJLDGBJf71AgmS2Z9qbfmAcxFSp9KJsu4gF0bSqOJV
         hkmawjyLFBMEfydxfpns15HSNfG2R8HexQX8O06yOWAdn0QF6Thl8L2XBv+WbR3U2Oya
         YtfdFqNcj0fapJBlaPkf53KzBHDi2WThHANk+TdL5fsZGxBJIhsZWQBDcQ4vkKXUAy3P
         yaTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=R8tq2yJ2zyPeOMR53rw+Ay6/eBTIBZbFhCUrbnvml3s=;
        b=JlH8C2hVx8HbfKD/aDmzywH8lrSZPidAmZdadPVOVYzE4rGUEg/ksfKldXbJeXl0Rn
         e5AywSHjj50gxrggGzH678ApP72iqv4wMIPbO4BbwrdcTTYrCYCzg1Ht3bZGVOmgDxtO
         vDTMyPT3GH6+oVELX1YV9e12S14swKCaQix77t17EvG0rPzywRC0Y9NqkxsLBtc8QLAn
         tZDx9CnZvuJK4cvxeetCvcBbB1BOMBcSUwkH7ZeHrGyIaKkF/hpbbDbtj7r9QrDzhgkw
         /nKssty18NMtCwAdR+jjiz7mVCCv99I2EtAi1J5u5n0m6f0TG8vFTB1RlN8hrQ+7s6vI
         esZA==
X-Gm-Message-State: AOAM533oMatZOyuM+Qg91lVvi3Z5pK+iG7Qo49nN5IEyRo6Nzbjneri+
        y1kB48XcrxXb7KeIhQaXk14=
X-Google-Smtp-Source: ABdhPJza3sp+mBbK5UiNpTmvbQSCyWwXo5uXHG7zDJizoLHNHmjskJSiIr+uBX7MbCGblYHNjQ6bbA==
X-Received: by 2002:a05:6402:41:: with SMTP id f1mr39175029edu.286.1609336609798;
        Wed, 30 Dec 2020 05:56:49 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id d4sm39434336edq.36.2020.12.30.05.56.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 05:56:48 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: readlink
To:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
References: <79e09e31-c33e-3fbf-158b-30344e7aae68@jguk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <63d3bfdc-93dd-6f3e-8ed4-7036b01f9751@gmail.com>
Date:   Wed, 30 Dec 2020 14:56:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <79e09e31-c33e-3fbf-158b-30344e7aae68@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jonny,

On 12/24/20 6:52 PM, Jonny Grant wrote:
> Seasons greetings Michael,
> 
> May I ask, could readlink be updated to use the same wording for null
> termination like on sprintf, scanf etc?
> 
> https://man7.org/linux/man-pages/man2/readlink.2.html
> 
> It says:
>  "readlink() does not append a null byte to buf"
> 
> Perhaps it should say:
>  "readlink() does not append a terminating null byte to buf ('\0')"
> 
> In addition, is it worth adding a BUGS section to remind that there
> is no terminating null byte?
> 
> "readlink() assumes the caller understands that no terminating null
> byte ('\0') will be written in the provided buf. If the caller didn't
> memset the buffer to ('\0') or allocate an extra byte for the
> terminating null byte, there is a risk the caller could overrun the
> end of the buffer, or use uninitialised values in the buf."

> 
> Finally, perhaps also the EXAMPLES program could be updated to clarify this:
> 
> "/* print only nbytes of buf, as it doesn't contain a terminating null byte ('\0') */
> printf("'%s' points to '%.*s'\n", argv[1], (int) nbytes, buf);
> "

I think that having (1) the existing statement at the start of the 
DESCRIPTION, (2) adding a comment to the code, and (3) adding a BUGS
section all to cover the same point seems a little excessive.
I've gone for 2 out of 3.

Thanks,

Michael

--- a/man2/readlink.2
+++ b/man2/readlink.2
@@ -93,7 +93,7 @@ in the buffer
 which has size
 .IR bufsiz .
 .BR readlink ()
-does not append a null byte to
+does not append a terminating null byte to
 .IR buf .
 It will (silently) truncate the contents (to a length of
 .I bufsiz
@@ -332,6 +332,8 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }
 
+    /* Print only \(aqnbytes\(aq of \(aqbuf\(aq, as it doesn't contain a terminating
+       null byte (\(aq\e0\(aq). */
     printf("\(aq%s\(aq points to \(aq%.*s\(aq\en", argv[1], (int) nbytes, buf);
 
     /* If the return value was equal to the buffer size, then the


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
