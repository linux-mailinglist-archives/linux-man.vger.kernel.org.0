Return-Path: <linux-man+bounces-3929-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C3BB8E48E
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 22:00:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77ED57A3A77
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 19:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B70F1A5B8D;
	Sun, 21 Sep 2025 20:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wolber.net header.i=@wolber.net header.b="L2YZc2+j";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="JiZrb4sO"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-a7-smtp.messagingengine.com (fout-a7-smtp.messagingengine.com [103.168.172.150])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EAE61EB5C2
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 20:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.150
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758484822; cv=none; b=f/12EdpsJpXYRliZSF98WEij1mEpzuNTDf2FTwliKAtnvjvCNhwaGq2nCleKgTovjT0LeKs4f0RAGQ7ds/SEHSARSmYK5C/3Jv35U5uDsbGLYt4JK/mjpI2Mn5qNrS1KgHmF0d7Vdes/2BaFLSlkbSw4GEmoLdUGeWk4A/+ZEH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758484822; c=relaxed/simple;
	bh=gAl4fIOnpPzEIw6hQmBxSxx3dOjU8wYLpa9YRW1m/R4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=WVcZaePdyssBXS/icHRpUqHJ38UUa/UjK62QQO1MaS/XVu1rD5Spyfd+h1ngWSrCI4XEIx7Zl9dXGpk8uo9RQ9TBwYcc0Qbd+cstGvCqwp/dzobHHYgXkRE4sbVI4lX2FytnwW68odMV6o0QUHr+YbahRhDmP+37CjkKeDecGs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wolber.net; spf=pass smtp.mailfrom=wolber.net; dkim=pass (2048-bit key) header.d=wolber.net header.i=@wolber.net header.b=L2YZc2+j; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=JiZrb4sO; arc=none smtp.client-ip=103.168.172.150
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wolber.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wolber.net
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id 9287AEC0109;
	Sun, 21 Sep 2025 16:00:18 -0400 (EDT)
Received: from phl-imap-03 ([10.202.2.93])
  by phl-compute-02.internal (MEProxy); Sun, 21 Sep 2025 16:00:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolber.net; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1758484818;
	 x=1758571218; bh=BdPFU9lpp21uSemThmTQ0B16KhiUZUhDGffIgbA3eyM=; b=
	L2YZc2+jTRcRanyGlhQktsjqBIfTtboll6536DcW2oZdGKEhea82fbH3LyU1tVz9
	JePzud+wbhuVh+TNS+zuFhT1OG4GY9DInywVYwGOmkbmZMKuxuIufj+z9kjjkPI2
	DzbI+gTGJa3JwMqebvOayM+UGaOtF2zTZU45bmaphFYIkiPoMCqFer+0BSAF3lgy
	QKK9jyMjOeP1Wfp0Di4p2AqvcossApzsPUko+++caJUxopzC8RxmvpxFUIZp2Tkx
	NFb3SIr3xOWv7G+AeWs2e+SYD71CAFcsLSIOAg8oX9jOoKzK5b8YwNJa9A6eB6Pi
	fsrydglOyutErgCqQTRrbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1758484818; x=
	1758571218; bh=BdPFU9lpp21uSemThmTQ0B16KhiUZUhDGffIgbA3eyM=; b=J
	iZrb4sOA3Rv30kXenYjSRqOtT31lAyUKCgkCTdaHjl5POopWsr2VGb50JROPAa2O
	HqajnYHWvNoe6Rq/daXJP/uaJk54FYjvFIATkwcmRZZiWP56oNoAgkCoi+DSJQma
	6XFuu0Y+REX8kL2E3djRnIUZQsFXea4eCr7yJYidwfNc0Ls7CHzeoNM7KYjAYK/V
	Fhyo0Tsm+wKuDn4BKxpdw5QsBWq2z1SSu+WGBPF5y1WKvkiRjsKQS95L86/d/EJg
	pRYkT7Lv22+t9WNM1eyMrTFyzz66C1i419BVjILPLfh45zZ3YxoR/WiO0w82i8GF
	ilkId/GRS5Wd+KnFcuSFQ==
X-ME-Sender: <xms:UlnQaHELVvpHThPxVHrI0ye7h2KD1arKIB72u3D0ykm1BtAAC200rw>
    <xme:UlnQaEWBDLd_yW02KkL-mautiqaLSZSTvAie0K_alYomu9Ec0PgGIhzSkB5OSskTK
    17mI2Td9-o9UyfVXTA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdehheekjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepofgggfgtfffkvefuhffvofhfjgesthhqre
    dtredtjeenucfhrhhomhepfdevhhhutghkucghohhlsggvrhdfuceotghhuhgtkhesfiho
    lhgsvghrrdhnvghtqeenucggtffrrghtthgvrhhnpeeghfeiledvgfevvdffgfduheeuue
    ekgfeffefhiedujeeiveehkefghfdttdduteenucevlhhushhtvghrufhiiigvpedtnecu
    rfgrrhgrmhepmhgrihhlfhhrohhmpegthhhutghkseifohhlsggvrhdrnhgvthdpnhgspg
    hrtghpthhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepphesughrrghi
    ghgsrhgrugihrdgtohhmpdhrtghpthhtoheptghorhgvuhhtihhlshesghhnuhdrohhrgh
    dprhgtphhtthhopegrlhigsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhig
    qdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:UlnQaEZPWd2cxN7O6R8poqOb1IEYgkSjoxrBBZvgXRQ7xhNQNcCgBg>
    <xmx:UlnQaK3yXZNKtXF4rySqWQhtncovyqVLCbev_yJGkHvGRmuRiU4yLQ>
    <xmx:UlnQaCfVbmzuLudbOgLioRUqeRaEgb8kFeOuSo_hn0_iXbF1HsK-zg>
    <xmx:UlnQaDGy0ivwKe6SkEl8cEwJ4kqxpt7KA5pswGkElbpH_y4qel_0RQ>
    <xmx:UlnQaNjRkzCb76WvblW0hxtVA6gh7U42f8rMoulbObl9V96m7ETVL8wh>
Feedback-ID: i5cf64821:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 2732818E0069; Sun, 21 Sep 2025 16:00:18 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 21 Sep 2025 20:00:15 +0000
Message-Id: <DCYQUC1K8JYG.PT86UCKZWIHR@wolber.net>
Cc: <coreutils@gnu.org>, <linux-man@vger.kernel.org>
Subject: Re: Move GNU manual pages to the Linux man-pages project
From: "Chuck Wolber" <chuck@wolber.net>
To: =?utf-8?q?P=C3=A1draig_Brady?= <P@draigbrady.com>, "Alejandro Colomar"
 <alx@kernel.org>
X-Mailer: aerc 0.21.0
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757> <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com> <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb> <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
In-Reply-To: <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>

On Sat Sep 20, 2025 at 5:01 PM UTC, P=C3=A1draig Brady wrote:
> On 20/09/2025 17:55, Alejandro Colomar wrote:
>>=20
>> I know.  However, many users don't enjoy the info docs.
>
> I my experience user don't enjoy the info _reader_, while the docs are fi=
ne.

And that is all it takes to kill the value.

Perhaps I am unusual, but I typically only pull up documentation when I am =
deep
into a problem and need a specific answer. My brain is already full of prob=
lem
details and I have little left for an interface that requires more than a t=
oken
amount of navigation effort.

Man pages are great this way. Like any documentation, they almost never con=
tain
_exactly_ what I need, but they are good enough, and navigation is trivial.

Anytime I hit the bottom of a man page and there is a reference to addition=
al
detail in an info page, my next step is a search engine.

..Ch:W..


