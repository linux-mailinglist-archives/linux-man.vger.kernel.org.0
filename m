Return-Path: <linux-man+bounces-4970-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GD1tLntjeWlhwwEAu9opvQ
	(envelope-from <linux-man+bounces-4970-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 02:16:43 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 821DE9BDE9
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 02:16:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB8523013266
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 01:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DD6122156A;
	Wed, 28 Jan 2026 01:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="KU3LGuZv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6DD2E40B
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 01:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769562866; cv=pass; b=brMjnO6cOyysA4Ukay/DbsDayAxcrT3wuFi4Kqgu+dQUzTbtakfT8Ea1E4+qUiUgORpCHOhTt9kNmHsVpYFm4apYn3Flrf6zj0FvEj/3rUmqV/YctY5FtultAZJyGCsqcFyD+c3hdwnR03A5qNMNdxuGA/SSNn1HQVl/OgXMulg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769562866; c=relaxed/simple;
	bh=unTIvzo5BrtvirXGIOpK/7lkBrK5Go3MRj0zX5iXwyw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SDmgHdX5bvGOLJM0A3Snm2OzwNNd3LQR2+Pto/tMsIlPX/UJ8rmbeiTif+DkJbI3icDh+Sn0dM2fdcElaJgwGs/W7iFTr6JoX76GtqDVIRLM0XWyAnOA1HiNHEeVgZGMEZ5dLyGWfXnBmnpvFsXtyJaC9G+2vvtf+lj7bk1wqr4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=KU3LGuZv; arc=pass smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43591b55727so5985558f8f.3
        for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 17:14:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769562863; cv=none;
        d=google.com; s=arc-20240605;
        b=HtCQSxkexlZwzUwBtuZw5zDMxA+f6Ve4+OIC6nKiUQnx8G03aiU+lq6pJop/HlJFSG
         EUBTqc83JF4MuymPbEBN1u/Gha2t5pBtbjuIzfNzspkA6oLJnU5u3/O0MpGmafAGP5Ok
         slrGbB7iRccKdGFpcB1LtLz0qH7t7Qr4jDy1ZrtDsBO0yaww8GSzDdrO7pNjHXTdoaSU
         8md5j/MjNokfo3pa/VtPLFmdYiXL1kWkelq1krFUyiGE5z9hHrd3ugPK+CElEFhNeKMB
         jeD4ZgsFTjLsj4LShkoXm7ORqs6RbwIhOkgB0pWG6fjha1pp0+DSLHiuSYLOuRx03TOE
         cqfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C1KuxxwRBXKcLHVdlJlOAyYHZ82vHJRLwr4fIpNnddQ=;
        fh=kTbk4pccRQ7ywKItoF6eFeVMUIye+84NI5zbIP4rQ9Q=;
        b=XRymefjCZy0VXF7wWzZ8fsewaJl5gKFKeCMaLCv2zAgbuM4mbm1Gt43cPXKzuKM5Nq
         i9Ka2IjaJAszvLkkQVMTA7nwF8uhEhU06WKSM/dWAlw/Izj9qv1isWyCZ4NIis0bsp5d
         XgspLccYB/wksCPrm4Q0DCD+8OKLCocJWOMVsx80YhXQs8bSMklq1g4vFIBU1zolAbK8
         o74IuFCbnKm+5rEr5vx+XX/IuLc1aAjlm6/aToCundYg8WLvFNi0TugpNgttpkkh8pKN
         EWFQwlAIo5MHN0cmMi5Yff6m8N87eBk30aF+WTrO3gv7Y2wj+A+0MWl9BTQlgmhXNaL8
         TdDQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1769562863; x=1770167663; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=C1KuxxwRBXKcLHVdlJlOAyYHZ82vHJRLwr4fIpNnddQ=;
        b=KU3LGuZvyFzxsxS4owAVxImuLHWgUfL+91lkmFBY6LrXPLPgCF7w0fxd7f6siF57Q4
         H0iAdv1qOcakdyzCGicdelOqpZ650xqc5uZiiSitAh/MixV5GaBPkJ9bM59UbTNkddlS
         yHr5cb5sMW1ZJF4keAe3vLVN/aYZhDclqYjcvZz7CHwPfPochLzBvP5sjmqp8ZD7HOnd
         TAYKyEJ5caJZ2/NvQO52SqvkuhEBzTZ1kgI2HDRXsR3dAnnVew2AxkJ7al31QhQJfmnF
         3c5JWXGQzqHr+9V44ehSBuWHGI3P/dERicf4gls0drQw+zJHLvKxFklyofYli3l6kHpO
         o72w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769562863; x=1770167663;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C1KuxxwRBXKcLHVdlJlOAyYHZ82vHJRLwr4fIpNnddQ=;
        b=agGHzJmnnrkN/aDDIVmykJD2yxOZa9dd5JtML2QD/U/MNKWI/5ZNmM9AE9h32N8yUt
         V3Dqrt2Rqg5m1Htn6WqDx//EES+xH0UPpBCKWurYoFA2bjRO1bz+l4H7SMvRzHbN4ofs
         0YJ6929w8xRpeqcnvQh0RzCmBGQK7oGvlpVQYI+AGy70DmyUwbnFr/RWFAChrIgmoAg2
         k5MsRv6rQGcUVX92Q+dHSaBM2bC8ebQqiKcIl8Q/+g/zeM+nTCEb2g7Xzxx7DBEEu+/O
         dk59FAmQcnXk8vK7nNm0ChYRcPUVn8BK40+TWoC9NB8k6FwW4Fp58hzyKUQWqrvYNWCD
         UWnw==
X-Gm-Message-State: AOJu0Ywp4WF9n5+ICHuxvb18B1SZpGRsx3q+RCVQry4P6APgoKUfRjRZ
	2jgq/ztuC0+h5qwE4e8ZrFaQoIRFtihnx2/bh0QW5hgzVfI5W4IRLmpoN1GzJWfN51XNVA7C8oi
	xti2jCLlrOtyIlAtv5UX/R6xrHwTKWs66EaUOZFD0cykM4ga52yQJvHnO0Q==
X-Gm-Gg: AZuq6aK9P7D1iFVIlt2SOWAZTomcgwm+ZHdKOTP7yDHII33kOuiF1v0D553KJR+TbqL
	X8ylSqHEEp3w57CqkD9hoDSyvk2LEFB7zeQIl3U8qCc6zYRpMCwjJd0raIIjV9s2bhioOnPx8bD
	5ojQ6tf7PIM950kgnn3TshEnaSBeTrsAKOxw9UU3z3jXTiYxt2B69C+QSuUIuwXYz4TROw/NrII
	bK3Emnaje5cShdaZpj3qLuxHXBdNa/yXtMi645w/WY4cFTBqX4lg2nXMZf/n+s9ww20motJ67CR
	PX6P2belNKDpleRhrgoT3mIjXZqE/umF/m37RJ9DD6Rt86nuZtrmc/PNq5GJAoCh00esTrOxx1J
	HwCXf4E0HhweWDjIkItjWaceportX1k2+SGzsHNXWQ+tBxACK7yTn4s1UrKNH3nX1ham0p7IOkm
	knY2CHzzygCb/mPpjgDHr/KPhR2+ASjoBupnVtZIcaHmvhhnKlEYaN6IBoa1n8YW67RK1hONbo4
	g==
X-Received: by 2002:a05:6000:1445:b0:42f:b707:56f0 with SMTP id
 ffacd0b85a97d-435dd0b2a1emr4835673f8f.37.1769562862747; Tue, 27 Jan 2026
 17:14:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260127142545.3328119-1-benjamin.p.kallus.gr@dartmouth.edu> <aXk13qiCiMyzqWu1@devuan>
In-Reply-To: <aXk13qiCiMyzqWu1@devuan>
From: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Date: Wed, 28 Jan 2026 01:14:11 +0000
X-Gm-Features: AZwV_Qi3viTu--bj5Ra5gPxOiFVyaN8BORKZaRzP9iMniTU7VU150qOjZQ9Ggis
Message-ID: <CAB6pCSaAuXkRMYUErv0NDMq+o_=a2pTkdZoNvq--U3-tt89mhQ@mail.gmail.com>
Subject: Re: [PATCH] man/man2/mmap.2: Document MAP_GROWSDOWN return val
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[dartmouth.edu,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[benjamin.p.kallus.gr@dartmouth.edu,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-4970-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[dartmouth.edu:+]
X-Rspamd-Queue-Id: 821DE9BDE9
X-Rspamd-Action: no action

Hi Alex,

> The patch only removes code.  Is this accidental or intended?  I think
> this does not match the commit subject (which BTW has a cut word?)

This is intended.

Basically this patch just removes an incorrect statement about the
address returned by mmap when the MAP_GROWSDOWN flag is passed. I
could make the subject line more specific if you'd prefer. Also happy
to change "val" to "value" if the shorthand isn't sufficiently clear.

Thanks,
Ben

