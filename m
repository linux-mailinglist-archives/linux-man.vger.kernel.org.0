Return-Path: <linux-man+bounces-4249-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7C4C2E050
	for <lists+linux-man@lfdr.de>; Mon, 03 Nov 2025 21:28:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 13C90343DE4
	for <lists+linux-man@lfdr.de>; Mon,  3 Nov 2025 20:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C83B029D27A;
	Mon,  3 Nov 2025 20:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b="mbGTGtdI";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="k+ZutNqa"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-a4-smtp.messagingengine.com (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB73299959
	for <linux-man@vger.kernel.org>; Mon,  3 Nov 2025 20:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762201692; cv=none; b=UiQ0a78D830WKB4lKuLRoswu1+NzqmkZN4dKUtFxHoEIYID0PSUcCpeJVOhP9LzJIGDcbo4VRi2PY4hwlUxpFSafC8DERiS79SVhUNjuZIPLqHdF1GjG0Ka/A2Uga1qvBDCT4IJ27OV+ZV6jj7IEIYf/CQfY3Dy3YoRmWu7h6yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762201692; c=relaxed/simple;
	bh=y8QWyr/Awaxht0xcBlyix309SNd+Pgr5zR7QnkLhBK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jIsyCQMWsOs6zWZu/SydXMhqzH0/b99yPw+pEMJ30A3Gth7lfGgAgs8FNQcpp33HoSs6IlOvntomHdR6XTa1nb4+ZS82G1GR7GeOAqZfvnuUpC3NRNt8krw/QsYaLu6e7D472gGd0Dj0UpxUXkHypRZL1UFYPPhfDZCSoK1Tu/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch; spf=pass smtp.mailfrom=bernat.ch; dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b=mbGTGtdI; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=k+ZutNqa; arc=none smtp.client-ip=103.168.172.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bernat.ch
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 6D029140022F;
	Mon,  3 Nov 2025 15:28:07 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Mon, 03 Nov 2025 15:28:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bernat.ch; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1762201687;
	 x=1762288087; bh=xSEHkg+VbB4e4/amAv8GGAiyFeQ/SiIj6UvGoXYX4bQ=; b=
	mbGTGtdI7MwksLnyBf9QH4iA6u5q/vCFPI2/i8lVTVJn5bgoR2xwa6fNdE6YVUnR
	XNGzJD67M1nvofsRZfhtY6bSAv2C7O7BqNSEZSC3sI3l3C78KyuAtCUuw+7fvYUM
	CmZBOK4U+i8XIIF8KoDLT/BVaRyltbJkknB7PCO7kpV9xjc5WyrL7fHpfkV0vb24
	SxX/U6juiAkdYH6VkJYVzLdh4bJEUAvRw87ZnlhIvFQgByJbzO/4LffbJyG8YT7d
	fb25gH422l5M1qmWMXXumobdiL86QfBoIuzlht6IJiJiYY+38G2LI68ZjYYsc/Kv
	V83aCeav5STCu4R6VhDSEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1762201687; x=
	1762288087; bh=xSEHkg+VbB4e4/amAv8GGAiyFeQ/SiIj6UvGoXYX4bQ=; b=k
	+ZutNqaRotb/WN4tfjeewlgy8QbePcIhUt4eKPDx9tdLE4efXZ73cDlGpbdZD3Zk
	4eID/8Mam8V3luhDg2jE7lk/vNe+kTNHP3z2oUONIC2A58vjnwHoWlkD3KQIKRfu
	lXC98BjFDAAadSmLYFizSB01e3A4NuJNMnC/6S65NAkOb2CoJfXphOAbZyCbP0P5
	MOLspArvOUC0hgpJosMfFpTSHASJtlgMCjMUnGmm1HXwuYESomtRkkz7KNSAO3g0
	Bso/J6D0uHSQspxtwiuO2uPdmoy57y8IZHXBqe1Rjpi2XE9bpJ7JEjuazrorOY+A
	oidHL4Qrg/24uhpdxAHRA==
X-ME-Sender: <xms:VxAJaaS7dnWebznA6jR2E1DYBfm5O_zfa_mNx-bmMQNcEjAdeuoKcA>
    <xme:VxAJaWz9gUaZxcMW54J-56DB6ejc2EYiJ6mnPWcpDP3D8JrEtrM7Zmj3fpYH_8P8Y
    zgsY0pcV-kde7d_K00yulAMQEOHqtonPbafC00yCcEfYojEuORr>
X-ME-Received: <xmr:VxAJac38gYR5udXq-2cigkylwWCm_xzMSmt7QJsCk1rCQ2bPMsQQPIB9XpnoKdNG7OctLm10LZYEv7VfSmWy4QzEL1dP1aglEmLxGYwT>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddujeeltdelucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpeggihhntggv
    nhhtuceuvghrnhgrthcuoehvihhntggvnhhtsegsvghrnhgrthdrtghhqeenucggtffrrg
    htthgvrhhnpeeihfffveegteevhffflefgleelteevhffhjedtieduvdeggeejfeehfeeu
    keeukeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hvihhntggvnhhtsegsvghrnhgrthdrtghhpdhnsggprhgtphhtthhopeegpdhmohguvgep
    shhmthhpohhuthdprhgtphhtthhopehkrghfrghisehfsgdrtghomhdprhgtphhtthhope
    hkrhgrihhgsehgohhoghhlvgdrtghomhdprhgtphhtthhopegrlhigsehkvghrnhgvlhdr
    ohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorh
    hg
X-ME-Proxy: <xmx:VxAJaU7flOA1NpkvaQiUoEpk0IDU-pUKiDoxAJuzLOoWX6du5iegnA>
    <xmx:VxAJafVdLI0FbEpYb4tzs2cVSMcP0HMIBSjbf5sx7yjlWnui7qxyAw>
    <xmx:VxAJaTBtwFrcsEypFjV9vh3GKfitB2szkb6i5zXGPVLIvDuEQBTkYA>
    <xmx:VxAJae6wMlaG0eTTiAmjhn7SZ8t2fMVY6zou0smlmUXJYlnT8DlkQQ>
    <xmx:VxAJaWIem3g2M2koWjE_YAzmJRM8oOV2HHGaLd6pnKv8YTfuB_Pe5Fe9>
Feedback-ID: id69944f0:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 3 Nov 2025 15:28:06 -0500 (EST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by neo.luffy.cx (Postfix) with ESMTP id 8405669;
	Mon, 03 Nov 2025 21:28:04 +0100 (CET)
Message-ID: <b6486fae-b0d2-48f2-a57e-371ae960e93f@bernat.ch>
Date: Mon, 3 Nov 2025 21:28:04 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man7/socket.7: fix documentation for
 SO_ATTACH_REUSEPORT_EBPF
To: Craig Gallek <kraig@google.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man
 <linux-man@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>
References: <20251027131711.186482-1-vincent@bernat.ch>
 <pqnvi6iojjw5inryoevybyz3ujmwpknn4rwo2jmtycadgcvutk@2o2wuutlsbrn>
 <6bb1b90e-1b1e-4cf0-b1c6-fe96adbb3e58@bernat.ch>
 <CAEfhGiz9OLu=arVoPFJhYTr3h-wB5QR5sOkgNDMzwR+74NUEBw@mail.gmail.com>
Content-Language: en-US, fr
From: Vincent Bernat <vincent@bernat.ch>
Autocrypt: addr=vincent@bernat.ch;
 keydata= xsFNBE/cpVkBEACi8ZoEu+dhI604/5zMuuAlPt7e1GDj75UgXZh5f21JYRt/laVsxiK07BG9
 NkTCpFzoAFRfndf7HvvTcKrumgPUFw0bYy9uvkrDDAzRV3slA+rL+n6hugbxMrtWM+sSoB7p
 teZcfADDwfcO3SjvQV9mGdVcBOQq3lABdbWP7IAG5myrIvozC/Li8v8w1dUeT7dnO1ciVS8y
 4J3fLNXD+EzGllSmc4BOWpkNJylkHLC0aeduhtgfe+t4aC/zaX9ccgWapei2kV8k87imayEQ
 0oaz/112jyGMJHJYnhlzDa/UcYA93EWGmRNeiEBrV1w2RGHm8oK4eh/xMWpHVEd/tNS261x9
 Q/dOHZxX6Qf/WQcmARRAkBhHmt+K+6F/TtOZqldRksUO8CGdQ9zt74Vg2RRVmctkOp+5Vh1i
 LOBzBzFybzlyOhw6+cdE0S5EgS787dcjGw9MBpqt5ZX25dcp+obyMQJCREyuUs6a9F+H0I8Y
 Yhw8b7ygEbTpGmQCZRFcw196luniZHHlfyfY/xsH5FuxfmeVfHJsA36I6G6ge4JBjK8/6WpV
 DH0DmbAHCs5ChT8ppIwNHkdJw7JTCAUx2AQ6HlEK0R/CBXpTnozM40ni3BD0tUh04qUenvni
 +VxpfxyhkNqBCq5wyIoGqXpkxc8TPeSq05Zu9/KSxlKLoJn/TwARAQABzSJWaW5jZW50IEJl
 cm5hdCA8dmluY2VudEBiZXJuYXQuY2g+wsGOBBMBCAA4FiEErvI0h2bzccaJpzYAlaQv6DU1
 JfkFAltos54CGwMFCwkIBwMFFQoJCAsFFgIDAQACHgECF4AACgkQlaQv6DU1JfliQQ//Wqe2
 1h/DNiYTGIf7t+QudJfqKizwJP90toxWZACY5ZLqdCijVF0AESODbETJV5AeFCx2O0Lu5XvC
 K241fSBYnNpkvCBTkJ8Lws0b7j39AbtQfWAKHj0FLuf2nr53KFpkudKQYf4LHofc1WdvKUPo
 bVcnURNe9FB9mZXjiP3oi8hvBDbbS8+qeJSb2UMrgxjBQ0fGxERM20IL/jXqWpFfQDs/F9iT
 UGCMEkghiiMumyhTXVfSUUxB6bFM0A0UtyvwpaiWH3pvicYyGv/79/ojjpK0Z4gDyYB3k2Qm
 PNlgadUlSY8fkZYbEbjFVyk22UnyR7mAiwgmeYqQsTF0VU8NalogSw6DgghiJd5cqEsQzgql
 E6uv72zhdlDsIZTA5hNZhPTgV9Bk2PyHywNget8UU3FIr1EszfTI96W14mFYk/N7L8Sq63kq
 jC+zc2B2N8uC3c/p/TEDlS3XID37Iyw2heIqh2PtqjP48tJdQDQ/qJhMiagnR6O2/KkFNQf/
 mTHtR5goqEhvskkHjvVBuCB4TTNfLy/BGynqth2q1W9Ir1ey9K+0Pla27P03fVYqbOnahdUI
 q1y/uY149v6pkCjSqrcCGTPhQYuktdBbuglVWeAukkXUc4B7Xq3adI9yyIcfB/7jUlvPPJe2
 w177cIlro7JlH97yHtLv0Nrh0QomvqTOwU0ET9ylWQEQAJrsPZrACIJvx4KGH7ar/2KbPIaH
 zmWHoGopQVsQSoDNSxtAZZAh4P11U+h1fjiC4+7sFK60nv1lCAyoUJPXBVTnG2+09L9sFbXf
 kuxCuiA0Gq27zKeidT6Rnr770e4YKJt9oiuEJqSmMM9aKWmqrU3NI1StkIftls+1qaGOnEfI
 BGOiCB2CAiedwF91O4Kgl79st5v40eFGZ1DAbkpToxnFVSouAhUNxjArXYUp1RT/gelNu7N4
 R7AvWHy4Wlv2rvlUmVt2gCIC2s/dbsmvgvqF4EeAbxSz2qvWXetgC5WN8PbPAA0um15kwAc1
 iBU5zYKtXd4CKxM0ztLYKVtlV+omAW+IZ65JlhlF642ujgOAs8IDy4nxSDDlr8oDZdxe5hq5
 dolemXeZi/EGUfvwND8hOBAM4cryjUSfWK1Zu5HyZFYNnqHJ36f1nkdMB/D0n+akS/a2Webw
 Nd6NbQVSpYei+xzQwN89v1B6DBjWaBv9TQJiDAgcNtNNkqtOf87u7o5r3opEQxC9EWuZnMsl
 zQlh4oREcYp93siy1AUTfq5ZlwOsXT5WzxSY2zv8DHMnznlatkD0AvOC9Flsn0Z27yIyu1Bi
 XJqTmmOM9wRLiAIms6A1By4WSoJ5xXVS1UYvemZrCgt+N/DGjO6kAfhAvhoooeUCBiNWTPH5
 61ooyXFZABEBAAHCwXwEGAEIACYCGwwWIQSu8jSHZvNxxomnNgCVpC/oNTUl+QUCYrCHmwUJ
 HDnjwgAKCRCVpC/oNTUl+ZmYEACETHKSE/wmaq6J8bXEXaeIs2tYyMlE3k5LqgDIkms/hF6U
 Psf8tf8YW27/C5fEmUNPcsLwiSusYuNVy/jy9jC9Ka06sNqozNUCdHD3zap1k1myjnLe4L9a
 WphuJF0EzSflbZKFOmCY5mKeDZatZSrneYqaqdgxPr4Wyayd4haxjkVnGRBW/eEcHAImjkQ7
 X9lV4zEXng1OC4pBDizj4ATY/zgzRR00rcinG/gtLQ6XcM6SjJQrgIRSA6X5J+T54xXVHWe2
 3+BUJOLN/m606dP9PiAbpbns/ftyA3YX0WgDGXO67y8ZyEmTbuQiwGo11n79vvEySnlF2wEA
 ZsfqKD+IvKKQGVbJAju935/TGMQved0doP0qZOuGJKqb/0wJ2631Kjx3+jegUTaqpUS0Im48
 aDPltGsV+a45vkSA0LIp3G8h6fUeElU0pqY5l6g8cvEEV3Cqj25Z/6cEmJl68Sz+rJHkdJks
 Ty8X172/RyIbVNkefAOd0ZCanSRkTiMtjjX1BhFYgZlK5oRT9aeAhUUQaXYj43X+ciejDzor
 4tEs0NAMbuPdhk9zHNCPD/wFJsAagpaCgYKpKcmBhMsodkGX6MnDRxHn4bZytTAKirrqgJ6s
 4466JQwsN3xxnLyjMGf5eHW82us8jF4i0CHthJAPoIr8p+0dP6qaQ7T0ji9UPw==
In-Reply-To: <CAEfhGiz9OLu=arVoPFJhYTr3h-wB5QR5sOkgNDMzwR+74NUEBw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2025-11-03 17:31, Craig Gallek wrote:

>      > On Mon, Oct 27, 2025 at 02:17:00PM +0100, Vincent Bernat wrote:
>      >> When using eBPF, the program should not return an index, but a
>      >> decision (SK_PASS/SK_DROP). The socket should be selected using the
>      >> sk_select_reuseport helper.
>      >>
>      >> Cc: Craig Gallek <kraig@google.com <mailto:kraig@google.com>>
>      >> Signed-off-by: Vincent Bernat <vincent@bernat.ch
>     <mailto:vincent@bernat.ch>>
>      >
>      > Would you mind adding a Fixes: tag for the commit that introduced the
>      > incorrect text?
> 
>     This is 1fa871f5378e (2016-03-01; "socket.7: Document some BPF-related
>     socket options")
>      > Also, do you have a guess of why the wrong text was written?  It
>     would
>      > be useful to have an idea of that.
> 
>     Not a clue, but maybe let's wait when Craig comes back from vacation so
>     he could say if there was a change or not and tell if I am correct.
> 
> 
> It's been a while since I've used this code, but it looks like the 
> sk_select_reuseport helper was added a few years later by Martin KaFai 
> Lau in 2dbb9b9e6df6.  The execution of the bpf program (run_bpf_filter 
> in sock_reuseport.c) still uses the program's 'returned' value in both 
> the cbpf and ebpf cases, but it looks like Martin's change tightened up 
> the 'type' of eBPF program that can be used for this purpose and 
> included this helper function to allow for an explicit validation 
> instead of just having the program return a raw integer value.
> 
> So I think this is just a case of the documentation not keeping up with 
> the code.  I'm less familiar with the PASS/DROP syntax, but I'm guessing 
> that came along after the initial implementation of these reuseport BPF 
> programs as well.
> 
> In any event, my quick read of the code lines up with your proposed 
> documentation change.  It might be worth having Martin verify as well, 
> but this looks good to me.

OK, so, two things are possible and the kernel selects depending on the 
program type (BPF_PROG_TYPE_SOCKET_FILTER or BPF_PROG_TYPE_SK_REUSEPORT).

if (prog->type == BPF_PROG_TYPE_SK_REUSEPORT)
     sk2 = bpf_run_sk_reuseport(reuse, sk, prog, skb, NULL, hash);
else
     sk2 = run_bpf_filter(reuse, socks, prog, skb, hdr_len);

So, I can update the documentation for that, as I have missed it. 
Waiting for Martin feedback in case there is something else.

