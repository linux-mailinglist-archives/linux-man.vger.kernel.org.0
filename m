Return-Path: <linux-man+bounces-5513-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJSzOLVPB2o9yAIAu9opvQ
	(envelope-from <linux-man+bounces-5513-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 18:54:13 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D87A554252
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 18:54:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0499C33920FF
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 16:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59B86355049;
	Fri, 15 May 2026 16:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="Qwu/1uEg";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="Vya1fNf1"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D106030569E
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 16:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=81.169.146.216
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778862130; cv=pass; b=WcyDYavHWl8cfCM5wPX7a4ATLJ+nUefSY/DQT1fVoczQgYOwLLjz3wx+6UdBeyhOBO9K5aJCqmCbqgz82WbYTo3J2SYvXYM6EDhIQfjRCb3+R5Eyn32/9+Kjmhp5zV6XbgSzDPwW7FntntoQ7V2zukm5HQZBxRQW82z1Uvru2i4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778862130; c=relaxed/simple;
	bh=Q8Veo9r3e2FYIbZohztQAXAE3MkzM6DDE/nX2SQG+Hc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Iuoh0Il2R+Y4w8YFxZ40UWMDvL5JZpTiqoc3d+urjdGj8bmAFnHlg5WRHMXzQRbQQLyACqqJiZBJ/0/iG/gcsk7BEqCFEEIQZVoMw+hyhIDbsNwyn43GlymfE2PggUTCoqL+ve0MkbBIxgWDh4weL6MwTnJ1f2PUYkvkuthpgtI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org; spf=pass smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=Qwu/1uEg; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=Vya1fNf1; arc=pass smtp.client-ip=81.169.146.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1778861984; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=skpSG4pbUdp3ThhZ5FluiCviAOr3aJrtrB9G9hCqqguKOZBWXgKi6yiAYjoDUgypwv
    Kc4IdHw2cugqhCpXODVZg845C0ubeFSSfCzGZkrjf2EQvK30STHNLhBShrGg40HAsHOQ
    pseJB+xN/YZBlf4oWtZvAQy6GQha3dTbCAuNNQp0RZegA/9bEdIO/7sSnDswUbm/5CT2
    SumJhw/7oZ7fF6EiAHJL3HE9mwTAj5xr1g6g2rEwEeo0nzlqYIwLfMXh6Fe3lSGFi6C+
    EBEcNIyQr0R36H/xVqgInyekAWfBnMmjAdktSBwDGsbdzJkxlOC5hEgtmORvHy57fzJq
    Q89w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1778861984;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=Q8Veo9r3e2FYIbZohztQAXAE3MkzM6DDE/nX2SQG+Hc=;
    b=axF0nmPCUCqtc08+SneMlftmPqVbuNIU5pNcVt05a4nHEOAQIawkSjuWjiPJIiUOT7
    VZCAplZC4sCUsHc0imUsl5FqxAw8tKtR7b5u6x2yq8ThzvVmfhWV65B0bVG5HRMzyKZj
    aGmgScXhBLb8Fyg5Gwibfqt4rHAqWtUl5qsiNvbemrzkicr3Vwy3ochjcu/1y4cSTQ2a
    PAFlQg+sHsUvda89sJddtzzxqeW+WHZRUGML2gRrv14CX9cp6xbjjpfxrNfQGKLUdAbs
    u/XtowUAQV3oPr706CaZMr7Csrph2U9wzuFIcrxEWEYkh/MygIid2bvHPJXQ1KsBn49G
    s1bA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1778861984;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=Q8Veo9r3e2FYIbZohztQAXAE3MkzM6DDE/nX2SQG+Hc=;
    b=Qwu/1uEgIQqWY3kY0gRqPCy6KknQpwJnEH0nMIarZDVxF8Ylvv86IO60fRdbDCfYQw
    1FWPqjqFw6zeU+1SZJKiUKiYVw9BBNaCxg31ZqLjc1c+VkQvM5wePa+ffNfp3kr1yEaq
    crFMxXnRXML9XQ4L1eWM14mqQpqX/b9bSIQ7NKbVHdGcLyjNBEbhXnG2hoIGqTZChC/P
    Ubx8mY0485Ajh4xtuHD50BOxN/EQBHY5LQUyBW469fecz7YK+hnvZiU4LrvGnP9INOdE
    CXxgAw6yKSG10OMdmyZOh1H3aAv+22ahtEb8yd/xirliTP+zU4CDi4L0ac0u/g/HXjEn
    60kw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1778861984;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=Q8Veo9r3e2FYIbZohztQAXAE3MkzM6DDE/nX2SQG+Hc=;
    b=Vya1fNf1M4nvT2IEHYdGErKIGSI//gGIlr4ik+mXQ/zdIuKHh+lzoHIdlyYeTsgk3U
    A/mgnNFATF7MoZMe6vAQ==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlLnY4jECd2hdUABIYZgv6aLDTL6XvuBN23m5k25McH2GusYR09qbv50L9xzz5nxRu"
Received: from nimes.localnet
    by smtp.strato.de (RZmta 55.0.1 AUTH)
    with ESMTPSA id Necda424FGJi1Tv
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Fri, 15 May 2026 18:19:44 +0200 (CEST)
From: Bruno Haible <bruno@clisp.org>
To: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Cc: Martin Uecker <uecker@tugraz.at>, Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH v1] man/man3/dlopen.3: EXAMPLES: Simplify use of dlsym(3)
Date: Fri, 15 May 2026 18:19:44 +0200
Message-ID: <3628881.qSoW2BAyJ8@nimes>
Organization: GNU
In-Reply-To:
 <508bb4972e4846eab32f11e924aec8e1c9132515.1778859636.git.alx@kernel.org>
References:
 <b2eb99d1f9a5681a4e8bca3126f3743fed900243.camel@tugraz.at>
 <508bb4972e4846eab32f11e924aec8e1c9132515.1778859636.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Rspamd-Queue-Id: 7D87A554252
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[clisp.org,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	CTE_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[clisp.org:s=strato-dkim-0002,clisp.org:s=strato-dkim-0003];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_FROM(0.00)[bounces-5513-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bruno@clisp.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[clisp.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

The patch looks good to me. Thanks for removing the misleading comment!

Bruno




