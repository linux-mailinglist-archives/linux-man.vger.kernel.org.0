Return-Path: <linux-man+bounces-4007-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8152ABAC6BD
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 12:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40ADC483648
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 10:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E89B623B62C;
	Tue, 30 Sep 2025 10:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FqRO7JhN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D92221FC6
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 10:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759227152; cv=none; b=IhGKsyVBKychpkr2mxrjIYW/JiRgM8F9E+OxkDKZxvgqr6hC2Jv+cgTDWlUXZTFFUQxrGV64ln/5PJuNaQo9aXkvOF+abarvqrDYyChWDxS7smkzmjjesVt25eLHAAfAXWogwAZmdMKUWQ3/GEOFQTlJutt0NlpWQ3bMyLw0f0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759227152; c=relaxed/simple;
	bh=nSXFDfc46KCUYViY+hmSzXNIXpCArhbqS6aZPKEAzbk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a18Jznvt1gJ9nX5G4ePRIIf1a8nBRrPcaIT+jOUkZ/7wJuuxJ011rFRSGum8dpPQUB6SyBBG8COcBgqVG9cj66mBujhxDcsMqUH8TQZIzdIVfJtmtLjIsM9gSjxA7eSCEtD3bSNpw41Bd0nU7EdFM1AF3yHiAoD4Q6oMoihXqgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=draigBrady.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FqRO7JhN; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=draigBrady.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-46e37d6c21eso38565185e9.0
        for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 03:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759227149; x=1759831949; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=RqLG4u+MiLs6fF/RTqMAstodd6OSS4HBPKzDNtzoeI0=;
        b=FqRO7JhNOF9uX5DLPrjnKCcVnRq3TrF2vCFMJ4kFfC/PW4x+FV1CbNaODxcQtry7+E
         J4VhbGCq59EsdLUW9QWiNBB0LX+07Amf2ugx/ZXUbDoJCLya9bxJlxH2jff2ABshcJ4/
         miURmZiSStbc+fr+7A5pZpRizPc9f7irV3REbvW7ZL/xiOBVOwNeZb9CRAd39cKGkyL4
         r/YjIXzPNsXPWL4UA6X8CMEQYiymFN0E/YAyk1MM0d+JNS9Xm5yEjFGjl5DkotSAIuyB
         NkR5LVTs/GHD1T5t2+X1FwKaNxm+MGikpoiBIXcKQalqipcukjGKnVIGmch6OC/dS+r1
         bDaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759227149; x=1759831949;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RqLG4u+MiLs6fF/RTqMAstodd6OSS4HBPKzDNtzoeI0=;
        b=S/Yd1LkXYlfcrQ1NpsRUWR8a3uURweekeCoNrS7jpZ4hcyhKTeyUpuODRAUtjfIs7q
         /63eExXUAOO4xI7f2FL4JqqdgIvfm9bq0J+dYmR627trq09q1whwlQgZOWZ+ckY9QSBs
         d0ZMXEa1N7973dXwz2pac9Kn2wbcBq/fMfmDLHwMIICOu4qWymaNmobAUQblWeFiKy1S
         oVVwUmTGNJ2kw+oXDwDTjA4s1oUcPsDyYjf/a9jNIUagbB58f+L4EObs6b93eyDrW+LF
         Ybp+qm895EEadWETxvAvzSUXjp4kHxFBLIxaNG8TeWcJrE0xuVSzobds9mY2ITn+f+Mn
         ykUw==
X-Forwarded-Encrypted: i=1; AJvYcCU2AGP4dglrs8s/YP/Z6EBuUx0qb+WvxaJAdBCFyU8XD4uylfDrTmOjz129Phzd2UMog9qpazU0iL0=@vger.kernel.org
X-Gm-Message-State: AOJu0YxatJyQQPZ0zPLW8EwM3URc8209f7fobsaVoxKPTAeRLVaIfNMk
	3YbWEFkrRQV6tw74rEHxAVNx7ZOE4CFN9yjfb1KiUnkOtXpqR4FNtHkOI+FUWg==
X-Gm-Gg: ASbGncuAblLbBJO+BoBdzPL1nnHVHZzjRWUSgN1K6NyYyu40Jz8h2j7X/az3K+NVwil
	xAi8v/Bze6MYn3UFh5BF2i206yzEtjmm0E2yGGTFnvFP+BwpifM3KYiDscvT2W9fW63hsC1/NxZ
	XoUob9ac4wemEBDS7goOpquxa8/KP9PzcURLv4SA5caoV300IiPmVidO+jwwID17/sWfkuDr3VA
	NQd/T7uTeSCGrqmRNDlgf8ScINy/NwS22mrgzwxd9m7+Wy8lrjmw3VflnzDT4fe07ggIxLlXfB/
	zBFXiZHPLsPgdpE81VzXc6Nw6M6mbjGxWVRsk9bf/caMjz8KGGEI2fXMstqX46ccSwv0uRg2E4V
	MDWVp0xlEMv7znU8vbgOc4Gc5e6ErcTwcmTjIoqynWfdnDKybs2x0gJ8le7qqGNBKMDYjYPvyoc
	2UDFwaOrJHv0fd1KUA7EB7mdMHUdX5b/9e94BTOg==
X-Google-Smtp-Source: AGHT+IGvzC5r+5NNgWochq1DZOGVpcTS5Brmawh1dXgX4Zn5Opo1WWPnBlY5va4fDtUBNi1sisStlw==
X-Received: by 2002:a05:600c:8b5b:b0:46e:3dcb:d9a3 with SMTP id 5b1f17b1804b1-46e3dcbdc9bmr124497725e9.12.1759227148712;
        Tue, 30 Sep 2025 03:12:28 -0700 (PDT)
Received: from [192.168.1.31] (86-44-211-146-dynamic.agg2.lod.rsl-rtd.eircom.net. [86.44.211.146])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-46e2ab31f62sm263720495e9.15.2025.09.30.03.12.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 03:12:28 -0700 (PDT)
Sender: =?UTF-8?Q?P=C3=A1draig_Brady?= <pixelbeat@gmail.com>
Message-ID: <339404b9-3216-440e-a312-aec3f5be34cd@draigBrady.com>
Date: Tue, 30 Sep 2025 11:12:27 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: Move GNU manual pages to the Linux man-pages project
To: Alejandro Colomar <alx@kernel.org>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
 <86frc5zj4i.fsf@aarsen.me>
 <avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
 <530c7a63-22ac-4d4b-a67d-09b21086207f@draigBrady.com>
 <m52fukfcpbd5gsloz3wiabytzebckrowm2xbjr5grgavsl5brd@qtm7gw3sekwo>
Content-Language: en-US
From: =?UTF-8?Q?P=C3=A1draig_Brady?= <P@draigBrady.com>
In-Reply-To: <m52fukfcpbd5gsloz3wiabytzebckrowm2xbjr5grgavsl5brd@qtm7gw3sekwo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/09/2025 00:27, Alejandro Colomar wrote:
> I'll work anyway on that, as some people have come to me in private
> asking for it, and suggesting me to fork and improve.  I'll fork,
> indeed, but without intention to publish.  Once I have decent manual
> pages, I'll offer them to be incorporated into coreutils.git.

Cool,

We'll incorporate any improvements.

Much appreciated.

thanks,
Padraig

