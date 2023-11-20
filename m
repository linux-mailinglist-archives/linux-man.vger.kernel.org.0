Return-Path: <linux-man+bounces-109-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 839317F1289
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 12:56:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 234E6B21739
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 11:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D72118638;
	Mon, 20 Nov 2023 11:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="L25e3xrH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA49F9F
	for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 03:56:43 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4084b0223ccso15168495e9.2
        for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 03:56:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700481402; x=1701086202; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wcVgtuyXJ4rW+QgxPnbZZiZ8HxqtsNDA/4ZCWxBlYR8=;
        b=L25e3xrHlCqGLehDq862YF5BfRgQ31eWkWzRlgGkI2ykT3C9tzRpVFB255KCgxUDku
         SdCik6HsAetdhnV4H00Y5jDgCNPiVbzzS6VxkVNcXGYMBwDu808U7t+1nkmOgvTAZAXG
         wia4p8ObM5gm/3cJHYoOnPYWCDRBWd6hssIzXUtPmmN6IAiLK0mEuNQAFXo1Ojk89RpH
         YDyTpBeioUncqbw9PCqnuxyPB76PbCe6eF8fgRND9Uqks92NAr+HlJ607AhfEx3ulmis
         RA+0DD2vdIKygxg6H1E43/vTTQ5z42hkV8gdwzZO1EKL1Qk52RG3dHHxUVZzCr8Yf9ig
         vyFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700481402; x=1701086202;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wcVgtuyXJ4rW+QgxPnbZZiZ8HxqtsNDA/4ZCWxBlYR8=;
        b=hobVcBhd9pXGuazDqvN2PGu3td63pMO5fWZdwpeQK8yk0FbRzAM6vIMQ3qVd1Hvphz
         jjIUmrolFOhAIvSKLA95Txgcvdou0nqtjXwiNlRaM3xeZITcG6UKgYifZxSsAMR8mV18
         GwDM6XBaEl+/uEbPZWHVX+v/Kr4XBJYzkePrBupAt3YKrVrC026ivw/ZBS83OTRWtGvu
         GjKG89JywXAUHhh/QN4QhX5JFqY27uhgoZeuowamBT0SdUeaUhhMzY5BBeoUIrzWZmKb
         BhIOc7YBRirhEgoX4nqOXj+GeLUIrXgoJu8gH/I+3ofkrQbs4bE6GYBgysD0l91YAzEc
         LXDg==
X-Gm-Message-State: AOJu0Yy0Re+tq2NWPgqUjC9xiEXOquvYKN1ZvSnBfwdeV0l4I8QLCRBI
	TS5zMgJUCuNRFbM+BoyVG4OyXQ==
X-Google-Smtp-Source: AGHT+IFHHLNNBXxoqtVVYNoUo2xRfcJNmwBXggxY70+g01t0VSisPSQY2+9qzf4esSxym1vAcXAVUQ==
X-Received: by 2002:a05:600c:1caa:b0:401:b2c7:34a8 with SMTP id k42-20020a05600c1caa00b00401b2c734a8mr6440835wms.7.1700481402137;
        Mon, 20 Nov 2023 03:56:42 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id l39-20020a05600c1d2700b003fe23b10fdfsm17987462wms.36.2023.11.20.03.56.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 03:56:41 -0800 (PST)
Message-ID: <317576b1-a2cd-4f23-84d7-830c242d7e86@jguk.org>
Date: Mon, 20 Nov 2023 11:56:40 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
From: Jonny Grant <jg@jguk.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, Matthew House
 <mattlloydhouse@gmail.com>, linux-man <linux-man@vger.kernel.org>
References: <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com> <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ebccf5c0-f125-4eb9-8820-e71e77f4f7ed@jguk.org> <ZU4s6Vm-jBjFCcJ2@debian>
 <66296bd3-9918-4dd1-8570-bccfbfd85239@jguk.org>
Content-Language: en-GB
In-Reply-To: <66296bd3-9918-4dd1-8570-bccfbfd85239@jguk.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

BTW, GCC has a useful warning for truncation that may help code bases that use strncpy, you've probably seen this and the article, just sharing for completeness.

warning: ‘__builtin_strncpy’ output truncated before terminating nul copying XYZ bytes from a string of the same length [-Wstringop-truncation]


Martin's article from 2019
https://developers.redhat.com/blog/2018/05/24/detecting-string-truncation-with-gcc-8#forming_truncated_strings_with_snprintf

