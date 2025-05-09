Return-Path: <linux-man+bounces-2884-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC72AB16B2
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 16:04:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D0837B4011F
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 14:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F25492920B5;
	Fri,  9 May 2025 14:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=moria.de header.i=@moria.de header.b="NYZW2Yja"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.moria.de (in.ti-gw.moria.de [217.197.85.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762D82AC17
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 14:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.197.85.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746799336; cv=none; b=WZTUoBx3HGwOjFD6f+GjCs8gfKNLMBnueunTSDdBRM07lpmCIih6Sy9nR9UbmtGt+r9rIJipvq43m2eofDXH8LaDL5oREzOzNWLOgfbbUa0DX57vGU1UBQ5khDIXKvCQgIzW6W4TFbMtDSy/LZjYe8WVUcmA151EUb4wmiyGbUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746799336; c=relaxed/simple;
	bh=cbp3cbcMXbrONBbxhL34oE26bkjZMkhMcLCCWixxKIU=;
	h=Date:From:To:Subject:Cc:Message-ID:In-Reply-To:References; b=Rkg8lyS3OK/7utnHleUkwXwT5Mze5Pr3uAJ22Tf9OUWHKbnEUXLzRok9joBydFm+NR0dBWwist6BfWbvYen+hgHK8vP8CYGi25elrx89pFTaY66UtF43DaN0LJiBkzttcx0m2yNjwvTCNvEvh2d0kyUuX1FQm0OrYUg7beSfzr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=moria.de; spf=none smtp.mailfrom=moria.de; dkim=pass (2048-bit key) header.d=moria.de header.i=@moria.de header.b=NYZW2Yja; arc=none smtp.client-ip=217.197.85.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=moria.de
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=moria.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=moria.de;
	s=20221124; h=References:In-Reply-To:Message-ID:Cc:Subject:To:From:Date:
	Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VZmkCi/go2zFu+NZP6GDTo+AE9acZZmHAljFR1YwBW8=; b=NYZW2YjagRV2tbpA7/P4We+FIV
	cUrkmcIeaX9JlRIl8Yo4NRA0o7hHiXVdfhivkZBrVvLaIBAdT2t2a6UtG05maGJbvBn7Z4QsBB/QB
	ulaHHMybDoFvk8EqOWSc/4q1zWgUoIqSHdnbfBALJ8FoG2D+FQQV9AIXVoE/ON0QG5208/S5pmVb/
	obdW/h8xICPyMstZADBU21ixKx8Y0AE36W6CQ3G4Qg8w/ZEpGUwmeKf/MbfJQQFRBAthEEjJ/+c/n
	FUeArLynyW5n/kv44p4uClwgeHDE3B61f1O6G5bhyuoqrwjDibiwKQeRca366qrqSDQmEEab5+nZd
	p73hMSCA==;
Received: from palantir.moria.de ([2001:67c:1407:e1::80]:56218 helo=palantir)
	by mail.moria.de with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256) (ID michael@moria.de) (Exim 4.97 #2)
	id 1uDOC8-0000000AWI1-2fqU;
	Fri, 09 May 2025 15:55:20 +0200
Date: Fri, 09 May 2025 15:55:18 +0200
From: Michael Haardt <michael@moria.de>
To: Alejandro Colomar <alx@kernel.org>
Subject: Re: Removing in-source contribution records contributer
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <20250509135518.HdQYC%michael@moria.de>
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
User-Agent: mail v14.9.25
X-Debug: DKIM none moria.de 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>

Alejandro Colomar <alx@kernel.org> wrote:
> Please let me know if it's okay to you to transform your copyright
> notices to make them uniform?  That is, do you approve
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=9f2986c34166085225bb5606ebfd4952054e1657>
> in what affects you?

Approved. Amazing how long ago that was.

Michael

