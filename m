Return-Path: <linux-man+bounces-3945-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C36B91D8B
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 17:06:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D8141886E77
	for <lists+linux-man@lfdr.de>; Mon, 22 Sep 2025 15:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED1362D6E7C;
	Mon, 22 Sep 2025 15:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=greenberg.science header.i=@greenberg.science header.b="lGyFZPlk";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="AEEg0Ae8"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-b6-smtp.messagingengine.com (fout-b6-smtp.messagingengine.com [202.12.124.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E6426FA56
	for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 15:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758553583; cv=none; b=RwzAFkKQQ8WFs07qLwvzjPJDO7CPjfGYlULdNjNKlyogyOd4JuhYVKqlyv8QQxEYj5LP22Wb761KIJjpWSu9qKadYApSN0w6TOv9rgnl9+RTHpNFjK6tiQ133lOvipWrmQRR3ONSqJOyjkzKck80A04bMifhJvS46tbCniyCu7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758553583; c=relaxed/simple;
	bh=+8hIL5KGNAJZlOZh4g/K9PyciOka61pPV9ze3TfUvik=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=iAz/+xwM4U0bHHwpuPoCH2WHGEPKi0rP9rwqQa8xjWZb9undbZLGLziNyo0rA85upgKyOhTv8wrO35mzcYubvfu+iuW3oNu3WnX959qubk/pFoeJT1QMRfXNv8tvi/gU+fgXn0vsJQubhFua/nzl0icQWdGuRpXzqb2eLE428hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=greenberg.science; spf=pass smtp.mailfrom=greenberg.science; dkim=pass (2048-bit key) header.d=greenberg.science header.i=@greenberg.science header.b=lGyFZPlk; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=AEEg0Ae8; arc=none smtp.client-ip=202.12.124.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=greenberg.science
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=greenberg.science
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id F387F1D0004C;
	Mon, 22 Sep 2025 11:06:19 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Mon, 22 Sep 2025 11:06:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	greenberg.science; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1758553579;
	 x=1758639979; bh=+8hIL5KGNAJZlOZh4g/K9PyciOka61pPV9ze3TfUvik=; b=
	lGyFZPlkU43G33u80Fsw7R10DPdsN36O7R1l/+biaPL5oknWe94nr5ho1l43DRFn
	INDlHCv791jnyr8lIeBXD3bHaqaAwMRhqzHccRq7tI4NqH71VJNWy/zT66RybCuw
	uHq6fQ36bcJrs1U0UUuO5XT3X7uXIx2gfqYJx5r4Outdnzb1Bs9OK88pdH4KDPkM
	aav7Z9KizpO/OZoZQixvQn4gCXbyz3OXSADKx6kDovMdYDL5mxfjTgkA0ZyzoHBN
	o2VSzmUFG/EHBo4ZCD0PGcisxalnM1pzMUHunLgOZy77g99hALdo2+7hfOAtcdVs
	y0wZoH6VGgSPccZRZA2mNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1758553579; x=1758639979; bh=+8hIL5KGNAJZlOZh4g/K9PyciOka61pPV9z
	e3TfUvik=; b=AEEg0Ae8nqd1gZ1JmXkJt5Q5XBUA/VbuHN8ZJC4NkCSsHIktZM5
	DX7hCr+hGkbokR2JXSQ2Htstvd0LVhcJENyIpjIbpqaEf60/46rBRNxcS1goPgod
	x9SAsshZZLW0p+Wqbp7/oN5LMC5bv/wx/1W0ItXUYfDO2P+TbpYMRvDPloTqQWpK
	g1A2trms9bt+Gpe5h6o8Od+eosXd7aoRuQ6XJkSpFDXS6+pNvLsM+IkeCxVo3pZs
	fkeNtERvKO8kfIr0J8o7e5BBa/jfmzCv3xUJP7+eRUR5P/pXWZZRW09W5p0zoRHO
	nj/8GesovjomfYVuAGCqCJLWJNnhjxVx2pA==
X-ME-Sender: <xms:62XRaLluZwacOtIRLjQVAHlc42ZsLS59-M3TJ-MXQ5Da-mGpCr22BA>
    <xme:62XRaCicgR_MLIeFMKuI_pjpyPLTBECouictAAULewkgxHUvIHxQHqUT0XblBBJs9
    KOLV7xv_jLYvV88ryms8QyG69op9nr_HXhbO0cOL_HQpeyQbL-_a9PO>
X-ME-Received: <xmr:62XRaLfHHsq9fwshuTWPOLyB3Var1OykRrkfkYAOPtNxVmkgdmMYCedT7GxXJVd8h_onxz-1XRYSFJDQNVmK5yEgELfNNzAS9lpzzg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdehkedujecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufgjfhffkfggtgesthdtredttddttdenucfhrhhomhepofhitghhrggvlhcu
    ifhrvggvnhgsvghrghcuoehmihgthhgrvghlsehgrhgvvghnsggvrhhgrdhstghivghntg
    gvqeenucggtffrrghtthgvrhhnpeetleejfeeutddtgeehfedvfeeftdeuhfeltdetvdff
    feeggefgfeekvdelteejffenucffohhmrghinhepphgrnhguohgtrdhorhhgpdhgihhthh
    husgdrtghomhdpuddrmhgunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehm
    rghilhhfrhhomhepmhhitghhrggvlhesghhrvggvnhgsvghrghdrshgtihgvnhgtvgdpnh
    gspghrtghpthhtohepiedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepfihilhhl
    ihgrmhgsrgguvghrsehhohhtmhgrihhlrdgtohhmpdhrtghpthhtoheptgholhhlihhnrd
    hfuhhnkhdusehgmhgrihhlrdgtohhmpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdho
    rhhgpdhrtghpthhtohepphesughrrghighgsrhgrugihrdgtohhmpdhrtghpthhtoheptg
    horhgvuhhtihhlshesghhnuhdrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehv
    ghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:62XRaKjiKmnKnl1B2wXoBNvp4_cDAu47wgpplgkVahAkPhSHjRZVJQ>
    <xmx:62XRaLxAO1gIAn02_vDkQ0sDqj45ZFrULy9CtBsS3L8quZZrpp-HgQ>
    <xmx:62XRaOOW4xGu5xaPcz0QRYPedLja6UScK_kMXKOlL6EdE3Ityzv1ew>
    <xmx:62XRaEWnwxjYdEtl_uQKorZgA2TX2fYlA5LlQ_MKELIJjqegg6o9sg>
    <xmx:62XRaA70TlBfcyCgX7c72HPRKtAcrqqOUDgcLFYcN0EC8cVUtX-_QPRs>
Feedback-ID: ib2794684:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 22 Sep 2025 11:06:19 -0400 (EDT)
From: Michael Greenberg <michael@greenberg.science>
To: William Bader <williambader@hotmail.com>, Collin Funk
 <collin.funk1@gmail.com>, Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>, "coreutils@gnu.org"
 <coreutils@gnu.org>, "linux-man@vger.kernel.org"
 <linux-man@vger.kernel.org>
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <PA3P190MB24382227EA61EC2758D5AA11C410A@PA3P190MB2438.EURP190.PROD.OUTLOOK.COM>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
 <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
 <jcxx3nfilug5tfk7ktgr4n4sw3nsvympz7tslsblqlqxbm6ou3@hu34rdpdtajr>
 <87o6r4zy73.fsf@gmail.com>
 <PA3P190MB24382227EA61EC2758D5AA11C410A@PA3P190MB2438.EURP190.PROD.OUTLOOK.COM>
Date: Mon, 22 Sep 2025 11:06:18 -0400
Message-ID: <87sege1q8l.fsf@hippogriff>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On 2025-09-20 at 10:31:31 PM, William Bader wrote:

[snip]
>> I guess Markdown or reStructuredText would be more friendly to new
>> contributors since many do not know Texinfo.
>
> Pandoc https://pandoc.org/ can convert between a number of formats. In
> theory, it can convert markdown and rst to texinfo. Maybe with care it
> would be possible to come up with a set of conventions for markdown,
> maybe with a preprocessing pass, to have pandoc produce texinfo that
> can print well.

I've been very happy using pandoc to generate manpages from Markdown for
ffs:

 - Markdown: <https://github.com/mgree/ffs/blob/main/docs/ffs.1.md>
 - Makefile to generate manpage: <https://github.com/mgree/ffs/blob/main/man/Makefile>
 - Output: <https://github.com/mgree/ffs/blob/main/man/ffs.1>

I haven't tried generating texinfo (I quite dislike the info reader and
avoid using it), but I suspect the output would be satisfactory. While I
understand the GNU bias in favor of info, I would support any efforts to
improve the manpages (which are, imo, more accessible).

Cheers,
Michael

