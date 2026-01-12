Return-Path: <linux-man+bounces-4796-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CA3D151F8
	for <lists+linux-man@lfdr.de>; Mon, 12 Jan 2026 20:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D19AC3001BF9
	for <lists+linux-man@lfdr.de>; Mon, 12 Jan 2026 19:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BC443090EE;
	Mon, 12 Jan 2026 19:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="apwmk8jX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2B82E7BDC
	for <linux-man@vger.kernel.org>; Mon, 12 Jan 2026 19:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768247233; cv=none; b=VUVc7Q5bEt+HDdi54qiwqzVXuD4edGOEsFJ3Pr2bKvyWkhppwwoeM++u/SfzkGWW3ZwfYqPc7i0TKYubZbNkeHCce89Bbm3AlQLb+7whvm+K2DB6OuTjiWUTUJzlLsL4z34tHGSWJiF2Z8BzRhpQ/Noksp+zV2yUHpWUEZE6+ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768247233; c=relaxed/simple;
	bh=P51URzVCmKXMBsexsFkLfXYkCJS+7bw/o/GuVqcAYT0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SoOMjZZc1YRV4JkXdBk4oM9GZRWuMM66fucoho6s5/X2G2d0EtaSzZ/TM2DGJEcoMTKoTRcusGFMaRvGjQk0oh+nRSA4LXfH2M1X88yE1A1cNBzapJU3Ek05OK5XqKPmoupLyuG2xP3SGazOaklofaAy1PIAYKostmoCyuTGlz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=apwmk8jX; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b87124c6295so220840966b.3
        for <linux-man@vger.kernel.org>; Mon, 12 Jan 2026 11:47:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768247230; x=1768852030; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=P51URzVCmKXMBsexsFkLfXYkCJS+7bw/o/GuVqcAYT0=;
        b=apwmk8jXRAKmRhXc88wdhzxvQkbCsCSIQ+vq01RS6pxQLw24pNT4GPRDqNsTSAtZs1
         W2HVRPn6qmvIxkJNyew3JIMMfTO+XXOC/6SY46Y0Kujli5ml63e13JffSWMNzYSwOZsL
         q87L8SOx70LKN4VKK7bF3CPAwo4N521/Qg8I/PINXPOb96igqSOtebtWdxDKNS8XRz9a
         0ZGPPmoPSTC2CxMJYqXkf/SmG7oD4ju4YDJvlEuRSvK9dvjBWM0JXotEr8UYUCL2kvyI
         +bGgRW+dpJl1vKOLGUZYwnpLIRLqkituoUb5dantHF4AMDiNBkZ+eXEd3ACS9mrVabEE
         fMSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768247230; x=1768852030;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P51URzVCmKXMBsexsFkLfXYkCJS+7bw/o/GuVqcAYT0=;
        b=TVCUixXjtGhE4Cf5dzKN5sesLX+V89Fpodghy80IFB9VuWDMhn0LCzzAMGpnZNqVTo
         9eCxL7BRLDxST3eW7d2aGTxIKHPBWFLeRDYmtvvKhSO1F1gRuqLoSZlb39hnbboSVEDz
         fxXpJvSsnnlqQEGE42SX5pjV8JB8ct0mbxF5eu7vdZUZXfFIhC4JEdvFgHcUb8oO/YGU
         uhGoVYVg/G3fKROtAV8ZJS+1GNgN67GcYXCmCbL/mq0kcyJRqqDv+L0c8Y36QJEPWSda
         IKMENItlS+PyRMh1t+HLJBbbEx91dkwb7YhmxIGtDBfISbSy3uWIwXQU/TxF59c2OT4K
         Y/lg==
X-Forwarded-Encrypted: i=1; AJvYcCUbqRv4a2+qAQBsTR0AEb0/KFsShJj5j6ke/pXEfC4Hr7IWS35fiSoDf4m8f0AWVhnX77Q0u6PwQxw=@vger.kernel.org
X-Gm-Message-State: AOJu0YxWsVn8FbtzH4tQ2xLKkXmrkXqUMHrRKSgDqPY1ctvQPqbVdmOU
	yWyq+3y/dY+U94cXgYIAOYjluVUtmedOw4YTmWsvM6TR3gCkID34G/tVVlHwij9a
X-Gm-Gg: AY/fxX4UlTaQXiOatvH5q8mgKaiHRgbbKXa9zjplmGmx+95b0+klwL9bW9B1moHNYt2
	/lMG17kJTJQ/5KarnQLETm5JYMqeIxb/Nbi5Y5UWindNuoCtpp2xPws6gF8jfcnFjH7vOkMLNXW
	W2OjuU4UR/z8tjsvAKZXdAFvhtae2z7XianpakDB0O6DyjYI0oErQYfsmRgOz6J9hTw2ezmMJ07
	uTI/Lp2CJmk7xN6d1NjbEOjPeXF++I9tEhis3g6EkjZLfxQscaVmeX1JTmbSGoVht0gRLiKzmRB
	IDyLv2wlQyJt5Vn1thWozsKqAsGN7yPrqm3jp+kzfnn5nCW6R3z0EHMcEzfqrEJMbXnF9w9luL8
	cTpe3ThFKBvYT3r59dT8iRV72auFZDCitgmW1IGvyC6bM6Hxnj5shHNf2FT7l4vdGG7jPfhiFq6
	oVYk3HIzrXefKsxJariIMFw5DDKKN7f/L77IV7
X-Google-Smtp-Source: AGHT+IFoiS3W+N6+Gx0FhKGNN5odyXqQmukjKhbpTwauuDgcr9Jttx/NSIk/G7cV4ibu0AWeA+hUjw==
X-Received: by 2002:a17:907:96aa:b0:b87:2f29:2075 with SMTP id a640c23a62f3a-b872f293a8fmr217055766b.28.1768247230214;
        Mon, 12 Jan 2026 11:47:10 -0800 (PST)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a27c0casm1998946066b.19.2026.01.12.11.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 11:47:09 -0800 (PST)
Date: Mon, 12 Jan 2026 20:47:08 +0100
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH man] landlock.7: Re-group description of IOCTL access
 right
Message-ID: <20260112.7aeff33b011c@gnoack.org>
References: <20260112194332.5498-1-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260112194332.5498-1-gnoack3000@gmail.com>

On Mon, Jan 12, 2026 at 08:43:24PM +0100, Günther Noack wrote:
> Move the description of the LANDLOCK_ACCESS_FS_IOCTL_DEV access right
> together with the file access rights.

Whoops, please ignore, I re-sent this with the signed-off line which
was missing here.

–Günther

