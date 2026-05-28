Return-Path: <linux-man+bounces-5621-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDw/BHCNGGpslAgAu9opvQ
	(envelope-from <linux-man+bounces-5621-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 20:46:08 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F855F6AFC
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 20:46:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1825A30C4B04
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 18:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C626440B6D1;
	Thu, 28 May 2026 18:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BmDssGtH";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="r2yS39If"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BE73F8EB7
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 18:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779993562; cv=none; b=sFCUjENhUsLIx+BqbYbw60/o5sOqeBApGt9Wr89wR0jGaMwNEJS561PI6CeAzxVjkkcmdKW0CVAL33DyaQtzI0z19J8V3HZ9X/38YfOqmeZkRWNQG3oV5CBmvz7/F4+NbrHMC90hkuKD+o1IhDTy1Gdazd0kt4hwUVTzGqifqmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779993562; c=relaxed/simple;
	bh=xYfB0jbWx3kTGIeT3JaMmB1O5q82AUnOhebqx/NZdow=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iAkPxwItoanGLaBkN2S0Xfsr6HM+reWfNcFunKuBNh0vk77cLmTA5e5KARwtbFsLF2kIviGweTUXvumi87xHVTLjKlA/6zQ7Ds+0S2I1eh0soqPkSqRQOP9rEz9QYp4yoNhw/ObYb5pDMuWEREJU7qK3xRL4DWVgSHUXS3hFqOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BmDssGtH; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=r2yS39If; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779993560;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ss94oZr5SzUVJzgOZYNOdiRG4xlbHD0Vq6pbuzn0HwI=;
	b=BmDssGtHblKSyF8DMYfbcC6RvE56u25koRy6eRGmOCPiWWA5o4hb+M73MuumCvPC9qwDoZ
	+lsT5YuyJC8Ax+xovB1Y+iFIpUEt+h4EQJySFjf/EjIRAjoHi/b2D2WQWyaDI4aDE6OStU
	K+cuqRnxI8chTDLF2elrxLyfFZHTAas=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-488-KOfU-DyePl2Ex-6yHqKd_w-1; Thu, 28 May 2026 14:39:18 -0400
X-MC-Unique: KOfU-DyePl2Ex-6yHqKd_w-1
X-Mimecast-MFC-AGG-ID: KOfU-DyePl2Ex-6yHqKd_w_1779993558
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-516ccfa109dso142344441cf.0
        for <linux-man@vger.kernel.org>; Thu, 28 May 2026 11:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1779993558; x=1780598358; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ss94oZr5SzUVJzgOZYNOdiRG4xlbHD0Vq6pbuzn0HwI=;
        b=r2yS39IfTolEADjC5L+76NppC5WOcTalbUjN8EDBCNcUZAX+MfdP3p77+RdEOSVtzv
         ucuTAkcvegHSecLvdsLqX9F9hf4+Qo6MTGaBNNEHe5eNOJsC3Jmyo8y3JGacIkSNRs1S
         XdzTOA7zLznLansZQCEnD4SkzUjJq1WbfAIPwLjfO59q8dOqsh1adFzLE/yZTBXYKd/p
         JQzMkLavAw0SrYTNxe+Nda/wvtm57Sed3mUAjNmN/NO1BHXK0dKZkp0tHhn0HKXo6Wq6
         CQ+gaHYzursfmMZYbnchpc5Z6K9+hS+4WbC4UD/4Zbw4r4mUpVbQPsa+42+8/HpK0GS9
         rGEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779993558; x=1780598358;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ss94oZr5SzUVJzgOZYNOdiRG4xlbHD0Vq6pbuzn0HwI=;
        b=mtL3JvXFemwTAy94xcXs0iYxmXpit+FiBwOvereodCflfrN2rXsCPcQ3JWx5gAvgtQ
         mpmSsUBMlL/xm+zrkhlH+l08mJZGGoZ3cEhyYN2CX+WCPL9WGSArr6fvD2UKKz4H8ewu
         zPNG0qjeF+Ea+NYSrgfLgCcaK3s2WcFMLuMlJSO1wIDlNGETOueNk/CmMKLgSAhtRawc
         U/NjTEGHhw2m60ybWfXvsIoZyooHuNbsgpykIztYCW8BBgAPyFhWuz4IaFSLhb+1y8kP
         E4F9lA4oSmY3ZzPgeIHIMSK7xktN9JhlAF2LaqW/tStd5QGjnfsXBLlpPqzLZJsITr02
         V6Wg==
X-Gm-Message-State: AOJu0YzIF4eKe1FzcJpFbkEuK6sfKd6IZ66EafZjUHgDf0zeNYzbaMgi
	XFvO2iPOxkj12AkaEtDdWvCj/6/am9CW29CY3Ep7rP8oSCaMoHXrRm+aW1YsGyJNhNcjue6Y7tt
	lkxKO0FavjZwseBFTKIsoi6CmV52VbR43pIIWzGZG7wLLGlevT2GOhMSf9enHvw==
X-Gm-Gg: Acq92OFiEeKsh7B2rmeJOFPC4lhwdE1qCY887zW8A9VYFZi8W8hFp9uVLvWZGfFVHNc
	Jnii67+o9fHFiR39bmPq2zSwZFz8ugZ3tKeDOVEba0/vygKE6aMP9aDv93MSceuuKY4b+zpnkIS
	3NUbq1aJZ1dWatDAKZz60Iugo2XvxwOllZVvqXGsHUWenccmk78FRd7KXRzA0pRpoQ/GhCQ1da3
	USN0czj9TnkLeDNaiL4eID1d5sKQYoojdYZ5gpPIun8K/G5nqweZEaGhsk6onSt3iSVqdW6nW7+
	i1V4detbCuUsOvhT8qfnkQbqaOEfoUcbG8ys4S4STFR/oO3RM+WpvlHY4UXiVU52D6dAQqdZvpW
	pk1EaE815h0y6HKhXgQ0DPHl7tEn8LkBkl3tKwimA/QL9bOD9+co5PHPoZ1D+pTgQ2NeR6I62SH
	gZkGv1j+pmBfPzpAYTtPtUC+F/vSaKGRCw
X-Received: by 2002:a05:622a:1b05:b0:516:e10f:b1ec with SMTP id d75a77b69052e-5172cb33759mr792311cf.11.1779993558012;
        Thu, 28 May 2026 11:39:18 -0700 (PDT)
X-Received: by 2002:a05:622a:1b05:b0:516:e10f:b1ec with SMTP id d75a77b69052e-5172cb33759mr791951cf.11.1779993557557;
        Thu, 28 May 2026 11:39:17 -0700 (PDT)
Received: from [192.168.0.116] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-517069ecb93sm89022271cf.4.2026.05.28.11.39.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 May 2026 11:39:16 -0700 (PDT)
Message-ID: <23a5740a-5de6-487d-b976-71e16205b1cf@redhat.com>
Date: Thu, 28 May 2026 14:39:15 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Mangled function prototypes (phantom arguments)
To: "Michael Kerrisk (man7.org)" <mtk@man7.org>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan>
 <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan>
 <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat, LLC.
In-Reply-To: <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-5621-lists,linux-man=lfdr.de];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[carlos@redhat.com,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: A1F855F6AFC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/28/26 9:06 AM, Michael Kerrisk (man7.org) wrote:
> I don't think the Linux system call and C library manual pages are a
> good place to promote this obscure GNU feature. It is confusing
> people, including me. (I came to making this report because several
> people have reported this "bug" on various pages rendered at
> man7.org.)
> 
> Please consider reverting these changes. These markings use
> little-understood, nonportable syntax. The manual page synopses should
> be in standard, portable C that is *easy* to understand.

I agree with Michael.

I think these changes should be reverted, but it's a question of
goals and values for the project, and the purpose of the SYNOPSIS.

My view was always that they were the simplest expression of the
interface that the widest possible audience could understand, and
that seems to align with Michael's view.

It certainly isn't for me as a C library author... it's for
someone just learning or refreshing knowledge, and what makes
it easiest for a new person or someone less familiar to consume?

It seems like we've drifted toward describing the interface *and*
the constraints in a compact form (like N3433). Is that in line
with the goals of the project?

It's not like these are the *real* prototypes in your C library,
since those are much much more complicated and difficult to
understand. It's also not like they match the GNU C Library
manual's description via `info libc mmap` that are presented
to users of the library.

What is the intent of the SYNOPSIS field and the prototypes
therein? What are the goals or values of the project around
that information?

There is certainly some syntax that is valuable for compilers
enforcing constraints and providing warnings, but is that
valuable for man pages readers?

For manual pages overall I think the forward declarations
are a net negative change in readability. I would continue
to express the constraints in plain prose.

$0.02.

-- 
Cheers,
Carlos.


