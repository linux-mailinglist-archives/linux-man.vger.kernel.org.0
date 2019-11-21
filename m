Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 71321105047
	for <lists+linux-man@lfdr.de>; Thu, 21 Nov 2019 11:17:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726293AbfKUKRI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Nov 2019 05:17:08 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:33899 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726270AbfKUKRI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Nov 2019 05:17:08 -0500
Received: by mail-wr1-f67.google.com with SMTP id t2so3696473wrr.1
        for <linux-man@vger.kernel.org>; Thu, 21 Nov 2019 02:17:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tSFT8tvq76pMEqGD2+UWeoG7l+6qPFR78Xg64m6wWCg=;
        b=n3K0ijjpyuSXnQbh24rayJU8l5nlhpdIqRbu3zu5c5QO51nxQ84xxYagEnk4tsS3cX
         /6564SgB4AJLBc1sVy4Mkhnkgihb0F4IBMcgF93l6KWjexatLtp/pyJb42qQ2O2oCHtQ
         gao3gNam0GmVoAYMZWfqfwu5O4SHn+hHA1+kOQDLtWIZZmT/vrbJFc1qGw2IV/KHtZg+
         fQrL4Emdl/eXU5ComKtYNL3QTxwsyL66edZrm4fm8yB0g2nuzYBoYGC+2hpcjqiRBQ5e
         Baduisk/4h37WWqcqD2cNt8d2KwkLFQg/Pv8T1Sf+sdh/AwWRxXgSVxfgTlSL623YoxO
         24mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tSFT8tvq76pMEqGD2+UWeoG7l+6qPFR78Xg64m6wWCg=;
        b=kjMTZajp2Ijb7cpXWM/xsOacZLlJDqv34WAREqh0Mfk2iI93ca89sdTTvYILnRNjV+
         bvFOFS6AGgNSC4KU0ogNSkvnULUgOXp4Um9bT9LEs+qNiq4Yl+zQOMXhbSmZGdwGmeKd
         kBOkTQ79s1HJJ1QSl3z03oRE4UgILeOtiUSRb3UYEyCbqdgr8+tjP4s4/ycF8PxyJkSM
         mQ1URnvOBcY/952pdP61YsNsvxHqjxYuSynwnG4hQ2fWVvgIz90Jw2r+RnyE3SCjfmRL
         HmdgN/ZJkGYp56iJgP/ewQtl4OxO5+jlHD88nADnUuBVG+iuyPw2nLmsCutMXnvI9KXF
         +18g==
X-Gm-Message-State: APjAAAWWTZCCDm5oL0BfFa4/4WfhuIta3HF5nKZCd5n9zeuIYaCVtO28
        f0s34IlF9AMQfhLzPTNDZYnLehkg
X-Google-Smtp-Source: APXvYqw2P22RW2+fnndvJaRaWsDfyDWjh2BtixRKHA4wcL5gCWd4BRj2SbngoFfSbYFR8dTDmgwBrg==
X-Received: by 2002:adf:ec89:: with SMTP id z9mr9464005wrn.153.1574331425331;
        Thu, 21 Nov 2019 02:17:05 -0800 (PST)
Received: from ?IPv6:2001:a61:3a4e:101:8d4d:f454:a7e5:543d? ([2001:a61:3a4e:101:8d4d:f454:a7e5:543d])
        by smtp.gmail.com with ESMTPSA id d18sm2833213wrm.85.2019.11.21.02.17.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Nov 2019 02:17:04 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] vsock.7: Add missing structure element
To:     Mikhail Golubev <Mikhail.Golubev@opensynergy.com>
References: <20191119173134.5668-1-Mikhail.Golubev@opensynergy.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cb29b489-09cc-0301-67b2-191f6bf06bfe@gmail.com>
Date:   Thu, 21 Nov 2019 11:17:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191119173134.5668-1-Mikhail.Golubev@opensynergy.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Mikhail,

On 11/19/19 6:31 PM, Mikhail Golubev wrote:
> The structure 'struct sockaddr_vm' has additional element 'unsigned char
> svm_zero[]' since version v3.9-rc1 (include/uapi/linux/vm_sockets.h).
> Linux kernel checks that this element is zeroed
> (net/vmw_vsock/vsock_addr.c). Reflect this on the vsock man page.
> 
> Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=205583
> Signed-off-by: Mikhail Golubev <Mikhail.Golubev@opensynergy.com>
> ---
>  man7/vsock.7 | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/man7/vsock.7 b/man7/vsock.7
> index 23c67548f..145057719 100644
> --- a/man7/vsock.7
> +++ b/man7/vsock.7
> @@ -95,6 +95,7 @@ struct sockaddr_vm {
>      unsigned short svm_reserved1;
>      unsigned int   svm_port;       /* Port # in host byte order */
>      unsigned int   svm_cid;        /* Address in host byte order */
> +    unsigned char  svm_zero[];
>  };
>  .EE
>  .in
> @@ -113,6 +114,8 @@ Only a process with the
>  capability may
>  .BR bind (2)
>  to these port numbers.
> +.I svm_zero
> +is always set to 0.
>  .PP
>  There are several special addresses:
>  .B VMADDR_CID_ANY

Thanks for the patch. I applied it, and tweaked the wording also.
In addition, I think we must describe the size of the field,
since the use of an open-ended array at the end of a struct
has a specific (different) meaning in C. So, in the end the change
looks as below.

Cheers,

Michael

diff --git a/man7/vsock.7 b/man7/vsock.7
index 23c67548f..1adc3084b 100644
--- a/man7/vsock.7
+++ b/man7/vsock.7
@@ -95,6 +95,11 @@ struct sockaddr_vm {
     unsigned short svm_reserved1;
     unsigned int   svm_port;       /* Port # in host byte order */
     unsigned int   svm_cid;        /* Address in host byte order */
+    unsigned char  svm_zero[sizeof(struct sockaddr) \-
+                            sizeof(sa_family_t) \-
+                            sizeof(unsigned short) \-
+                            sizeof(unsigned int) \-
+                            sizeof(unsigned int)];
 };
 .EE
 .in
@@ -113,6 +118,8 @@ Only a process with the
 capability may
 .BR bind (2)
 to these port numbers.
+.I svm_zero
+must be zero-filled.
 .PP
 There are several special addresses:
 .B VMADDR_CID_ANY



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
