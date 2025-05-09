Return-Path: <linux-man+bounces-2900-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BD20EAB1F01
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 23:21:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD4B11C26DB8
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 21:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 576E5261576;
	Fri,  9 May 2025 21:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="joptxXUg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF0A25FA26
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 21:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746825577; cv=none; b=O2GyG9Sv842fnjIGp65Y0tae2P+5YaYXfwmpJZyyzjvkFxuhGG2VEu2eSarC15BaLVaz1dFpoaykI4gZF13/zpWTuie9sCxaqLzDNCSFfhZO2Y06gUmhn8c+tygs8bjTrLrZo8zHhY8s+qCpGY6ZFXLTkyvbQfTcIdVBUHBTayE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746825577; c=relaxed/simple;
	bh=hdUp2Ghy94RsEqDvzyk84loNND4B89CTmfwZr/0X4G4=;
	h=Date:From:To:Cc:Subject:Message-Id:In-Reply-To:References:
	 Mime-Version:Content-Type; b=QD0BmIulW3uhlubryaZfI2xe9ED0E583NixB5aU4dl+vKLCohMiD35EN2HnYxkWN5SMowCZYgqXYRD5TpfsaleKXkgAXFf8lx1rAnHnskCoSdgWrQ7vSxKPIKUrqME4qRc1xRJ2ibV3fE/ccExrjSU3w00o5QEiSRNn6XdilVnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=joptxXUg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39EF4C4CEE4;
	Fri,  9 May 2025 21:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
	s=korg; t=1746825576;
	bh=hdUp2Ghy94RsEqDvzyk84loNND4B89CTmfwZr/0X4G4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=joptxXUgEWN9GGbpGelBmnknnnopA6AScQPbuQbpU8YpT7mzECm7U7Xd1XQSyCAAE
	 3JssqRczmi+suwI6JF8RKCN0/jazIdRj52xTovVMbx2jta4rDsV4g/pIgnRyTjn8yr
	 fC/YaPrweSzcyk9EILGmzvgJk8tcwSrJeBQlcqyw=
Date: Fri, 9 May 2025 14:19:35 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Christoph Lameter (Ampere)" <cl@gentwo.org>, linux-man@vger.kernel.org,
 Carlos O'Donell <carlos@redhat.com>, "G. Branden Robinson"
 <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-Id: <20250509141935.ca5d5f154867815a67043627@linux-foundation.org>
In-Reply-To: <ui7qbdaamsaptb7jrmiich42mxyc3ldhjv4smk6njjaii3p7uo@46ypgbczz5qw>
References: <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
	<wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
	<20250212230210.3kkixsk7bi3cdc4d@illithid>
	<lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
	<gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
	<20250408124238.2gbis6jq5pdz7yoi@illithid>
	<7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
	<nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
	<2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
	<a146ff17-ed1b-24d4-6c8f-2b544d9c888d@gentwo.org>
	<ui7qbdaamsaptb7jrmiich42mxyc3ldhjv4smk6njjaii3p7uo@46ypgbczz5qw>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 9 May 2025 21:11:50 +0200 Alejandro Colomar <alx@kernel.org> wrote:

> On Fri, May 09, 2025 at 11:31:58AM -0700, Christoph Lameter (Ampere) wrote:
> > 
> > Also regarding Andrew Morton's email address: I dont think osdl.org is
> > still valid. He uses linuxfoundation.org these days.
> > But you better ask him yourself.
> 
> Hi Christoph, Andrew,
> 
> Thanks!  I've bounced the original mail to him.  Andrew, I guess I
> should use your LF address for the AUTHORS file, right?

@osdl.org @linuxfoundation.org @linux-foundation.org @linux.com
@kernel.org all work.  I normally use (the outdated) @linux-foundation.org


