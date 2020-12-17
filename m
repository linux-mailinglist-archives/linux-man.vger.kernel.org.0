Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5870E2DD53C
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 17:31:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729021AbgLQQ2y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 11:28:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728158AbgLQQ2x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 11:28:53 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E318C061282
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 08:28:13 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id d26so13963360wrb.12
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 08:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LbEsGQuLuCOtICXxZSnWQ7HsEiDjvbFZVUxPG1dJTaU=;
        b=lP1jjYT6nxo8rtnP5Exhmj23kXMjWU33HgTQ3dSMn3v3eVSoOidPAwGz1maDc2z8sQ
         DfvA0Dqgn5/HSq/jw4mg03nO3CNMnl7VQD287xrDtMVipYGDDr2KUvEMOjXN5TdbWwSM
         +YLt3YYNbRi1WaaGtNcgoY8Ng7vZCu8msUTqKOproP2bMrPQozOoSn6awZwS4SiWEYEG
         NVIU2e0eqSyiTFkZ0meuWLriZRzRfulSXq8gloqr55PAW0n1/KrGZSX1AvHmllGgIedk
         GCKfBjt40yIHzXtF9xJ70v2Bcps5YJd0g+SHURbnsEI6Xi74WixlrvAV4NTBDBpDrcFh
         5K8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LbEsGQuLuCOtICXxZSnWQ7HsEiDjvbFZVUxPG1dJTaU=;
        b=dVoZXc/73daT9RIVAkmZ9QOqZH2B+FfFQYQ1uWFI6Wp9G+ljmAXC7r8KW8Sdgg1anT
         7W+4A36MBH9yxPc3xTs/6LigXe/1176sXB374YYcRp4aPU8bOUWn7JLzHuxSkwew0OhJ
         Q2YnkmGDpH5uTcx/BIVOSuF+F8BtpDXtHriiU8WQuqvLqFUk36hkU8x8UmtlV9Nv0FG2
         pbXIt+VRkn38rWU3Gg9WTM7MJHxDK5W2kzGjSgaJp5QMuClAA6lNcmgE35BQdPuNFDuv
         2K6HPNAW1vukiNqYVfNWKSYbxOoO2feKUJm3aDnpj84sPXq8cLeDYvK1b+/My8UyYYwW
         dAwA==
X-Gm-Message-State: AOAM5321S4+no8aLT3TwTsvJiVDAQqYyemQDbsNfo+B54VPW3EPzPFjd
        F6yi7c7KtRlfrLMN/4QTJ46BtpkLcoA=
X-Google-Smtp-Source: ABdhPJxx4KKINM1+v1SuhoAhpntf7J/4DlGk4lEZOSTxlTtrMS+eX4Rl2QoQYUZXDbtnSvMtq7Pozw==
X-Received: by 2002:adf:f605:: with SMTP id t5mr43862310wrp.39.1608222492119;
        Thu, 17 Dec 2020 08:28:12 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id z64sm8550291wme.10.2020.12.17.08.28.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Dec 2020 08:28:11 -0800 (PST)
Subject: Re: [PATCH 1/2] filesystems.5: fix link to userspace tooling for
 ncpfs
To:     =?UTF-8?Q?Ahelenia_Ziemia=c5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
References: <4443342faae85cfa74bae6efa1a12ff40efe18c0.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <f4c1d9df-cee3-dbd6-0b41-6da0cded316a@gmail.com>
Date:   Thu, 17 Dec 2020 17:28:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <4443342faae85cfa74bae6efa1a12ff40efe18c0.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 12/17/20 4:27 PM, Ahelenia Ziemiańska wrote:
> Corresponds to Linux commit 1b83df308f69a5a3cc59be03bd7fb23e4bcebd8e
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Ahelenia, patch applied.

Thanks,

Alex

> ---
>  man5/filesystems.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index b44dba184..6ec2de9f0 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -158,7 +158,7 @@ Novell NetWare.
>  To use
>  .BR ncpfs ,
>  you need special programs, which can be found at
> -.UR ftp://linux01.gwdg.de\:/pub\:/ncpfs
> +.UR ftp://ftp.gwdg.de\:/pub\:/linux\:/misc\:/ncpfs
>  .UE .
>  .TP
>  .B nfs
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
