Return-Path: <linux-man+bounces-3745-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D54B37F8B
	for <lists+linux-man@lfdr.de>; Wed, 27 Aug 2025 12:12:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B979E3B7093
	for <lists+linux-man@lfdr.de>; Wed, 27 Aug 2025 10:12:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 286F82F1FE6;
	Wed, 27 Aug 2025 10:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=r9.pm header.i=trillian@r9.pm header.b="B22Qr7K1"
X-Original-To: linux-man@vger.kernel.org
Received: from sender-op-o14.zoho.eu (sender-op-o14.zoho.eu [136.143.169.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE2423E320
	for <linux-man@vger.kernel.org>; Wed, 27 Aug 2025 10:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.169.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756289529; cv=pass; b=urZpx/cew7HUa7NEC2tMz1y5+qJ36vPVetB1RV2QzazXvQ45E1AGsCm7CwzNzjU1K+X79sLBSramoJlZtA+rzx0cltXXNIpVx7g6iUU4/bkQUI9NoTf93dwkCgY2EuaCkvNk6ktAEEYq+OGW/xVBGzTf0IZwgf2MClKC2OT1/AM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756289529; c=relaxed/simple;
	bh=9ARJwC+xrpUMv62Un6b9O+n12YJdo1LJ/koNonStQMY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sNvGYrrWWwNOE5qvojEhztICR0YN81UZzSmKLhfaAfRXrQV/0iLsIJo0uFNpPvqg3F+vT6rOKIxTtT8kt+zjb6e/8DTjoH58EQ3Aai9WUyxKWgghl5aH9lUIpki/ftJxt5jl+A7z7IQSP9hDppZ2p0vWwNOsJlQqpCvHQu7j4/Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=r9.pm; spf=pass smtp.mailfrom=r9.pm; dkim=pass (2048-bit key) header.d=r9.pm header.i=trillian@r9.pm header.b=B22Qr7K1; arc=pass smtp.client-ip=136.143.169.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=r9.pm
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=r9.pm
ARC-Seal: i=1; a=rsa-sha256; t=1756289519; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=PmZw1+89ZU92tfh3NNY9gnUNyv6SslEK/Bw+Cw0g+m5eISoeqAf/N/NGUfZM68PrZDCR8lKcuNogcAOrVKBgRoQ0ndhcnb+pzCIA/gVZpF79PCVZgZ89LeDh5hJeHxgIF52objlqjCNfKLOjNZRhurcgke7HoJQmSvFDGv0ZbXA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1756289519; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=8Ckfub4w8q71qIqmCAB2GLWa5VKG1BrtL/kDKLqne0U=; 
	b=jZskNe6S0985L+8VC4B2+BujCURW5rTkolOT2lP8ZE49n2hW/qX7R7b4cBeepUq7YEHFzoon8UrhYFMCu9OGNGR9qtL/QpH3S0o7b44jAijFIQVLlGCQqutaYwn2uP8aiWUD2CJgvgpoXXndSfa30z4nBjwN9iXYQv05DwfFn4g=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=r9.pm;
	spf=pass  smtp.mailfrom=trillian@r9.pm;
	dmarc=pass header.from=<trillian@r9.pm>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1756289519;
	s=sel; d=r9.pm; i=trillian@r9.pm;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=8Ckfub4w8q71qIqmCAB2GLWa5VKG1BrtL/kDKLqne0U=;
	b=B22Qr7K1aua51yWMnDZ7gL4YEOLYt0ioxvoVbu7tpF74BmPxyDoo8Ntxb+F5xbOT
	JPjCcq/bh972MU1W4hbqtrVE4kFjvoGEjA/QUk00vseZ/73wkZ+zSqCfy2VN+QJE9i4
	UU8fJsKm9AGTTrGm4J3PnRV7pZkFk4sB0dlh5gbCoYLkzyglNRWTovgbigRfBqBMOUM
	sLGIzYFZzhf9TTmpHBECa+6rDpyz2tCW9C/28mqrDy2Ip+PtvZdgGmCktHYXss3hwxR
	NBHak8SLykPUsEJvnWzPBsxPiwki+Ypr0mgQ+NjOrNidJdBEbHBLC49cJoblPmzJ54C
	Mrhe59VNjg==
Received: by mx.zoho.eu with SMTPS id 1756289517186414.089452857501;
	Wed, 27 Aug 2025 12:11:57 +0200 (CEST)
Message-ID: <2c5786b7-4378-4b2b-9890-4a7c67794977@r9.pm>
Date: Wed, 27 Aug 2025 13:11:56 +0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: man-pages bug report: missing documentation of quotactl_fd
 syscall
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <00100b13-bdc4-4a58-a1cd-ef0775644f6e@r9.pm>
 <7lqjed72kj25osci2h2tl6cqjw2hzrl3ksyrggi6bvkpiypdux@k7eu3rzqwrgc>
Content-Language: en-US
From: trillian <trillian@r9.pm>
In-Reply-To: <7lqjed72kj25osci2h2tl6cqjw2hzrl3ksyrggi6bvkpiypdux@k7eu3rzqwrgc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

On 27/08/2025 11:11, Alejandro Colomar wrote:
> I think we should mention why this function is useful instead of
> quotactl(2).  Why would one prefer to use one or the other?

So, there are two reasons.

The first is that in some cases, there simply isn't a block device file that could be referred to. This is the case for tmpfs (which doesn't have a backing block device at all) and also bcachefs (in which case there might be multiple block devices).

The second is that the API is simpler: in most cases where you want to manipulate quotas on a specific filesystem, especially an already mounted filesystem, you would refer to it by its mount point. Mapping the mount point to a block device file requires manually parsing /proc/mounts, whereas with quotactl_fd you can simply pass in the path of the mount point, opened with O_PATH.

While researching this I noticed some more details that would need to be mentioned.

First, I discovered that the original patch came with some documentation already: <https://lore.kernel.org/all/20210304123541.30749-4-s.hauer@pengutronix.de/>

This is for quotactl_path, which was later replaced by quotactl_fd, see <https://lwn.net/Articles/859679/> for details. I guess the man page changes didn't get merged when quotactl_path was dropped. (Or maybe it was just directed at the wrong place? It seems like it wasn't ever sent to this mailing list. But I don't know the procedures involved here, maybe that was intentional.)

Anyways, the comment added to Q_QUOTAON is still relevant for quotactl_fd. I also saw this comment in a commit message:  "The global Q_SYNC command to sync all filesystems is not supported for this new syscall, otherwise quotactl_path behaves like quotactl." which is also relevant.

> Have a lovely day!
> Alex

Thanks, you too!


---

~trillian


