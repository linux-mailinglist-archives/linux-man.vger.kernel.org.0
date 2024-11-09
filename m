Return-Path: <linux-man+bounces-1888-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CA19C2E7A
	for <lists+linux-man@lfdr.de>; Sat,  9 Nov 2024 17:27:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1117E282791
	for <lists+linux-man@lfdr.de>; Sat,  9 Nov 2024 16:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFC1719D8BB;
	Sat,  9 Nov 2024 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=networkplumber-org.20230601.gappssmtp.com header.i=@networkplumber-org.20230601.gappssmtp.com header.b="ED9KPN/L"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3FF19B5A9
	for <linux-man@vger.kernel.org>; Sat,  9 Nov 2024 16:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731169653; cv=none; b=ITOcm5BzOQd5GP8zxde69tah2L1HbiGictWtilyT2RTaF++Onrm/x5LgmaVsUcUI0AZW52HZS108ExEt1pX4AabvojNQbIiA1SmydBTWkKF/mMWcl14zMngOCTe6/u4zoRNUYieumXm46ytDKBIciZbkNYGnR6RJ7HhWK97zNO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731169653; c=relaxed/simple;
	bh=WZzrxyimjWciWISaxFsmtsOekAeVLezIfgaSDyweimI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SCyV69CglguWqvV+pZMVRZx7loMcHT1FMiCQ7nU4YvAn/E/BGtxiEsX8OJtZplWjAoHxRfupf74FFJ0EEeT3VQgB9rH3FKG8oFlQOubufN6kKptJKdf4UJrVv2qiY0WygL31w6Nqoe1ccB7ojrDC/moR8ulIIp7u64PpHaD3ML4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=networkplumber.org; spf=pass smtp.mailfrom=networkplumber.org; dkim=pass (2048-bit key) header.d=networkplumber-org.20230601.gappssmtp.com header.i=@networkplumber-org.20230601.gappssmtp.com header.b=ED9KPN/L; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=networkplumber.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=networkplumber.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2114214c63eso27121835ad.3
        for <linux-man@vger.kernel.org>; Sat, 09 Nov 2024 08:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1731169650; x=1731774450; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=udRqs/iTfP7vusxv5DMs8DstYroHU1Mrt42xjhPxN2Y=;
        b=ED9KPN/Lal5n0iJ9TuFnNBQe2TtZNArAJO/Zzoan/LQrJ1phlYUdkYWd2ZINmj9ukw
         ZwBHGft8dotNhgs/q09gH5M1YtLHkUaU8O89RBUPuve/9sGkpEE/SrrhOsbStrm206jL
         lZWZbeVMyBuCr3zb3bwOS/WqDKB6AaiewzZQwztmKe6HIYAAsMUYDNygefvUDq4UPzB3
         QTT7saByxl0y5SMT8CP40R+kcxZnRD4PLkg9G5lTTmMA1kkXkzf2AbXbJQi3tGLh1Xcu
         EblAda7fBpn8zHolLvcWx109OefoGZkYXAyN8FfW+vINT5G51mtscobO8lO6blUyFwoJ
         gl7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731169650; x=1731774450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=udRqs/iTfP7vusxv5DMs8DstYroHU1Mrt42xjhPxN2Y=;
        b=HvDfbTCu+DH+8N0eJWdFqAtB23vPfo2Ibt1Ar4HN2J6Ag3Cip+VXixqfvlNRUuxElJ
         5sJRFP+HOEhAH2ljWOlRyvNT1fEtYM2TUhayyR0lZHhqXp8P7ayvOJpqjTf7G6xmLeCv
         rUc+id22neGce8HoH1fAM+ENibQtQna9eaUHhmVGh0mXVyO0VoSPwQlmQaJ+33n6GcfS
         zOapHznb6PpL0rK+ifo2ovA7C8OgGkgv7Jp4k4V1l+JxxQNXK1zPSpjO4iG2VsppT4v/
         rQ7P3XpFzqHZPviD0qD5jE8L/+WIA0K6bSCyGgiOi+mAgVmKqxbCGpWjggKsrqy7xZFH
         tdfw==
X-Gm-Message-State: AOJu0Yzzb8wZc/bUYhCXvhnGIT966gexNOBi9abVRqy+WQpX0/Awc1wc
	IzUNsl9V22NCyPp5if41CUZukkmv3UhenF2Sepsvc+KgPaSQ9ftTw+2g+rFebMU=
X-Google-Smtp-Source: AGHT+IHsYrwMexcU/Cq3dysUbeGuH/SNVtaVVp8Oclii6GFudzZ6IT+ZP6rTkw2ZpgpLcGo/Gp+mqA==
X-Received: by 2002:a17:903:24e:b0:20c:e8df:2516 with SMTP id d9443c01a7336-2118359c161mr74281765ad.42.1731169649619;
        Sat, 09 Nov 2024 08:27:29 -0800 (PST)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177dc804esm48525625ad.31.2024.11.09.08.27.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Nov 2024 08:27:29 -0800 (PST)
Date: Sat, 9 Nov 2024 08:27:27 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Alex Henrie <alexhenrie24@gmail.com>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com,
 netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <20241109082727.40ed6f74@hermes.local>
In-Reply-To: <20241105041507.1292595-1-alexhenrie24@gmail.com>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon,  4 Nov 2024 21:14:20 -0700
Alex Henrie <alexhenrie24@gmail.com> wrote:

> struct ifa_cacheinfo contains the address's creation time, update time,
> preferred lifetime, and valid lifetime. See
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/uapi/linux/if_addr.h?h=v6.11#n60
> 
> Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>
> ---
>  man/man7/rtnetlink.7 | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> index 86ed459bb..b05654315 100644
> --- a/man/man7/rtnetlink.7
> +++ b/man/man7/rtnetlink.7
> @@ -176,7 +176,15 @@ IFA_BROADCAST:raw protocol address:broadcast address
>  IFA_ANYCAST:raw protocol address:anycast address
>  IFA_CACHEINFO:struct ifa_cacheinfo:Address information
>  .TE
> -.\" FIXME Document struct ifa_cacheinfo
> +.IP
> +.EX
> +struct ifa_cacheinfo {
> +    __u32 ifa_prefered; /* Preferred lifetime in seconds, -1 = forever */
> +    __u32 ifa_valid;    /* Valid lifetime in seconds, -1 = forever */
> +    __u32 cstamp;       /* Creation timestamp in hundredths of seconds */
> +    __u32 tstamp;       /* Update timestamp in hundredths of seconds */
> +};
> +.EE
>  .TP
>  .B RTM_NEWROUTE
>  .TQ

This is for man pages, not iproute2. Resetting in patchwork

