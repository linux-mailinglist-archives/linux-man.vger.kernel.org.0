Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 302C136DFFC
	for <lists+linux-man@lfdr.de>; Wed, 28 Apr 2021 21:56:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238325AbhD1T5L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Apr 2021 15:57:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232291AbhD1T5K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Apr 2021 15:57:10 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D677C061573
        for <linux-man@vger.kernel.org>; Wed, 28 Apr 2021 12:56:25 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id o21-20020a1c4d150000b029012e52898006so9493392wmh.0
        for <linux-man@vger.kernel.org>; Wed, 28 Apr 2021 12:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=p39zB22XsWpm++4POtJc6FYMSKGXTrWs97DD1V86SPg=;
        b=d8g49tagIwi1O6XTy/RjpiTGOUKbB8v6gKg46n33oVyxOvv6EYXH/Xcc7Uhuhkrv3S
         SC+CEV3BnsFvwTxsefVvN6UQcXumJS8swdxi/SdZ0j1VKDWt5htOLG5KI7CiyzlVvn7K
         qFcTiduAjGDMaUpuXnRZJEYy257UI7VGDTAci+HHxAKh0VeRTBqMwtjDREpvT7+1JD6Z
         bBF9OuVCbW3tWVcry2UabdzeTyGyWYQhpOFkj1xYd885Uy6Fn2qdlHQ1ZCNWogEfKWgb
         kSpWNpzsEYXco0aSgtScUXjYUlgOCyLdGi9rD/bKnecq/ma1Dbv50+jeOkWE4ZXLyntJ
         gF4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=p39zB22XsWpm++4POtJc6FYMSKGXTrWs97DD1V86SPg=;
        b=NQ1tVZJfvQoJlvCi70H0n8lz86Il8+PUEWbsDHKiKehkno/BzlqLAQ6l1T67YpdePF
         cb+fHpAeSAR/8fjbIROddea82/E90gljfKPROvgF3sxs/qgQJYQISPtU2uDyZRmGEEQG
         2Bx/D9HodV5q8M/yUprJvnMu4vfz3b5InJW4MvoxHP5plAepkAaqVv6UsygPVgqzCW3x
         +EnkNdjrbbhR6PdhoqfaM0uNsAOUMJIgLGQNZMdKmzxNufik+6g7FUWcKdSlhkR7ts5U
         y154y53KNQdpjcTXGqVJsxRBPYtBpcDurKhD+jIXg2X0NGm8LfOf5Foh/KiViBd7CfYH
         wvUA==
X-Gm-Message-State: AOAM5334bKo0Z+jAH1PY7pVyjZX+Af0U8IqrkljrgQ3aAADjj8A1aPQG
        CbHHSG6gaDDN7nQiJ2G1Yo4=
X-Google-Smtp-Source: ABdhPJxbQgfuE6nwPAjgkQvhdyMT4nJ71125L1+Q9z7j7wO/+GHYu+RqTL3LZHVkL/SAx553H2znuA==
X-Received: by 2002:a1c:5454:: with SMTP id p20mr6485636wmi.187.1619639784142;
        Wed, 28 Apr 2021 12:56:24 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id e38sm5898909wmp.21.2021.04.28.12.56.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 12:56:23 -0700 (PDT)
Subject: Re: Grammar issue in sigwaitinfo(2)
To:     Chris Keilbart <keilbartchris@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <8DBC5BC7-77BC-4439-AFC4-008490D8B107@hxcore.ol>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <736a987e-9880-b594-9632-c2b364842aa2@gmail.com>
Date:   Wed, 28 Apr 2021 21:56:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <8DBC5BC7-77BC-4439-AFC4-008490D8B107@hxcore.ol>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Chris,

On 4/28/21 9:19 PM, Chris Keilbart wrote:
> Hi,
> 
> I’ve noticed a small grammar issue in the sigwaitinfo(2) errors list, 
> specifically in EAGAIN. I’ve seen this on the online page: 
> https://man7.org/linux/man-pages/man2/sigwaitinfo.2.html 
> <https://man7.org/linux/man-pages/man2/sigwaitinfo.2.html>.
> 
> It says:
> 
> No signal in set /was became/ pending within the timeout
> 
>                period specified to sigtimedwait().
> 
> It doesn’t make sense to use “was became”, so one of those words should 
> be removed. I suggest dropping the “was”.

Thanks for the report!
Fixed.  I applied the following patch.

Cheers,

Alex

P.S.: Please send plain text email next time.  The mailing list rejected 
your mail for using HTML.

--->8
sigwaitinfo.2: tfix

Fix wording issue introduced in commit
bf1298c9e5053f55dea43e74255dae5ec57f251e.

Reported-by: Chris Keilbart <keilbartchris@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
  man2/sigwaitinfo.2 | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
index 5cd88c557..00bc50485 100644
--- a/man2/sigwaitinfo.2
+++ b/man2/sigwaitinfo.2
@@ -120,7 +120,7 @@ set to indicate the error.
  .B EAGAIN
  No signal in
  .I set
-was became pending within the
+became pending within the
  .I timeout
  period specified to
  .BR sigtimedwait ().
-- 
2.31.1



-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
