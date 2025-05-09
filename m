Return-Path: <linux-man+bounces-2892-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD83EAB1C5A
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 20:32:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 463E21C27286
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 18:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23BD723908B;
	Fri,  9 May 2025 18:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=gentwo.org header.i=@gentwo.org header.b="L/KfVFUo"
X-Original-To: linux-man@vger.kernel.org
Received: from gentwo.org (gentwo.org [62.72.0.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED67F237176
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 18:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.72.0.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746815520; cv=none; b=dIuJq/3SNaoyDnn8VPJ0S1GXYaU9uoUpqC5dXcxhhoUJ3uDGCqn7GjhDhECpOZeIrdJ3pzqgXnzG4CxeCBNL0DshUeTyZKk7u/fm0bKhw8zjnUX7i6RJ/9ntIH22QDYVDH3XBuiChv/gNcJF7+5NVyXXZlv8g+KGE2Fuzu013ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746815520; c=relaxed/simple;
	bh=huz9dIz1IHiSo8/lYrkXNSnjVuhqIu2y1P/FbUTmJuE=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=TZtWcSd4b2Atvctfg52LTF00twC4aflL2oKsvMRlGAbbYk8hpK/G5nXGWpMyZMYtSv2Du5bPgrFS+KLQECu4oaszWFpb7618a2qgVP2Az+PGozpVyGAhZHvHpqSlYB9cZ0PAmAyyat02W3Dzx8wk6a1Ag0rZLSzszx9g4Eb5YoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=gentwo.org; spf=pass smtp.mailfrom=gentwo.org; dkim=pass (1024-bit key) header.d=gentwo.org header.i=@gentwo.org header.b=L/KfVFUo; arc=none smtp.client-ip=62.72.0.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=gentwo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentwo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gentwo.org;
	s=default; t=1746815518;
	bh=huz9dIz1IHiSo8/lYrkXNSnjVuhqIu2y1P/FbUTmJuE=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=L/KfVFUow62/GdvZrWwme3ImuDKgwTFpwZziE0TOdUdFnWjTQUVYGhH5iuDNG04Ng
	 joSw2SEIVqfgEp7yrWZqJnt7mZlgMi/b6dspuFg2nEvEOzRDzq/Ezvu32SadBUfRVL
	 CTENV96Xc0lAoS1wyyMxeYjo2J4NpzsYbjfEs+G4=
Received: by gentwo.org (Postfix, from userid 1003)
	id 2AACB4025D; Fri,  9 May 2025 11:31:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by gentwo.org (Postfix) with ESMTP id 29C77401FD;
	Fri,  9 May 2025 11:31:58 -0700 (PDT)
Date: Fri, 9 May 2025 11:31:58 -0700 (PDT)
From: "Christoph Lameter (Ampere)" <cl@gentwo.org>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
    "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
Message-ID: <a146ff17-ed1b-24d4-6c8f-2b544d9c888d@gentwo.org>
References: <cover.1739389071.git.amitpinhass@gmail.com> <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com> <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik> <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn> <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv> <20250408124238.2gbis6jq5pdz7yoi@illithid> <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix> <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


Also regarding Andrew Morton's email address: I dont think osdl.org is
still valid. He uses linuxfoundation.org these days.
But you better ask him yourself.


