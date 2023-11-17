Return-Path: <linux-man+bounces-92-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 266CD7EFB22
	for <lists+linux-man@lfdr.de>; Fri, 17 Nov 2023 23:04:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC666281313
	for <lists+linux-man@lfdr.de>; Fri, 17 Nov 2023 22:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 233043BB56;
	Fri, 17 Nov 2023 22:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="PqLLDSg7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEE25D4B
	for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 14:04:00 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3316c6e299eso521351f8f.1
        for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 14:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700258639; x=1700863439; darn=vger.kernel.org;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aWlB1gAcLgy8I8/Ptyh1hWo8ZH+aSAw01WNit0xtc/c=;
        b=PqLLDSg7TDnrBYHwXPz9YSXBDLiP0xb5W3bLcqMTmL7kqGBOw5+hfBEaWs/SS4f/P6
         E7tKluP7os5jBPwk3g0aU04PA/TIf4wRj/JViV7iEJaKuGYVNA0mwmoKvfo6DZUZ1GwR
         6TmTaMYOJg4EvpMTSLIB1OMox5QMMIjxo/qVVDqZN/emRIcHRTydDVMdPplypESTu35n
         8/yNMX9FF78FRv1yJnXK222FJmZPumVZ7CG+XHhZD9J8pRd7/e/+BwGmmqiszvwVFv1f
         B9Yd1ZhEk2n89lnbuXV+fWrcKOKgxQuDXiNuEZGPSagJu6JmzsZ53Z+9sufW8r5CBzJw
         Av5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700258639; x=1700863439;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aWlB1gAcLgy8I8/Ptyh1hWo8ZH+aSAw01WNit0xtc/c=;
        b=u3worR0TgMW8CcY/4OokuSswo0JWi4Y9r6QOxye74xraoFVs+yf88SUyr6LZpytpVI
         juMwf2falq5UCnIA1+/iKmIR52C7zf4n1RRE2az7Moa1TamTddLWc9WHx4uVw/iNGn0X
         Lo88WFXJBBrIW8isVprFkf/YdxV8+l92bx0aNeHFqWtXg2CmVlhuHKG21Jihd0ttFX/d
         j/t3tkxB1d0CwHtGR38PaX9qZgCkZlo5SyMFFUN/Eq2ww/y1TFt08/+AVHM6s5E3xyMW
         AJNl8tpajRsll3Qo5/anHMyIDKCSpU5w/Xzd4E8CHLTHUDMT3o2ZF3qZ4D/8RTNHWWSm
         tzag==
X-Gm-Message-State: AOJu0Ywv0Mfpo1k662XL8fjlXkW3DAib5cJtGn9K91y2/RhJ1WbgrCf1
	Bgwi6FfSEJocDdpgo6pvcTgYiA==
X-Google-Smtp-Source: AGHT+IFxY6cQmH7uNKyrh5cWPflFVE3Lsmr3CHLyci4O+6WClmaiYbliEM5S9nkdV+mVb0yJOt1+1A==
X-Received: by 2002:a5d:6507:0:b0:32f:94a5:5726 with SMTP id x7-20020a5d6507000000b0032f94a55726mr227514wru.32.1700258639254;
        Fri, 17 Nov 2023 14:03:59 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id v6-20020adfedc6000000b00326dd5486dcsm3441234wro.107.2023.11.17.14.03.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Nov 2023 14:03:58 -0800 (PST)
Message-ID: <221a5e66-cf73-4342-a610-3e1b247b14c4@jguk.org>
Date: Fri, 17 Nov 2023 22:03:58 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Alejandro Colomar <alx@kernel.org>, linux-man <linux-man@vger.kernel.org>
From: Jonny Grant <jg@jguk.org>
Subject: posix_memalign(3)
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello

Some feedback, suggestions.

https://man7.org/linux/man-pages/man3/posix_memalign.3.html
"ENOMEM There was insufficient memory to fulfill the allocation request."

Rather wordy, how about "ENOMEM Out of memory" ? that would match malloc(3)


There are quite a few extra words in the description, how about simplifying:

Orig:
"The function posix_memalign() allocates size bytes and places the
address of the allocated memory in *memptr. "

Simplification:
"posix_memalign() allocates size bytes and places the
allocated memory address in *memptr."

Another one.
Orig:
"The function aligned_alloc() is the same as memalign(), except
for the added restriction that size should be a multiple of
alignment."

simplification:

"aligned_alloc() is the same as memalign(), except
for the added restriction that size should be a multiple of
alignment.

Kind regards, Jonny

