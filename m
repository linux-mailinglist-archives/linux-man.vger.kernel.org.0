Return-Path: <linux-man+bounces-4967-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLsKH3/LeGnBtQEAu9opvQ
	(envelope-from <linux-man+bounces-4967-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 15:28:15 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C799395A6A
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 15:28:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1346B30602D3
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 14:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B44C435503E;
	Tue, 27 Jan 2026 14:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="Im/5zz+/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BAE34EEE9
	for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 14:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769523780; cv=pass; b=UyV88EIzpoYMWZ25WfUubTEkvWhJj5ZdMWQNkwi58cKQlPKTyw7HyWn0M7JKeVLkoOo7L5Py29wvYN6ze2I6Q1kDSbNEvmqIo0arIz2cB7/Va0n1O1htigwLTgsEu4p1Vo9wlgbdLCDUCWAnANngcgOWBP+ZmKqo4GwyqjgYvd4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769523780; c=relaxed/simple;
	bh=r3x65Bb9jgjOQbVpVD0DsIjFeZeb5ydD+2igy+dBESw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZXbNNYFvQb0qdZPF5ouJm/36BooeLUsMyUPiqBCppF5LUtxNOTw0u3mkvFwRmJfBEzweRsh1qrqXAxegHsbDzWF6T9LeP1y5Ci81n0KlSuiSxvm/NvAKNCD+xyG3/Cx4MTEEG4S+pCYeSfSBONIquJlOzpR19R1aQWxsUQiHXzg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=Im/5zz+/; arc=pass smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-432d2c7dd52so5832980f8f.2
        for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 06:22:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769523777; cv=none;
        d=google.com; s=arc-20240605;
        b=cVCmF/qluauOy+V+Vmo1kJ+qaYWIMAwsZX8eFfTs8gfo2Oc1Oa557PTVkBp3B+uFkQ
         7mOp+9QW/C1jRAi24pk59FG7zYciegQPEBI58Jvt2XSjEFTLGLwwGWo73UBItrkUN/Ow
         +OC3FNBKx7esNxAZDcOgH74UbJ0TMEDr2W8p1/LeVK2pcLnNwVFnEJ/cZPA10Jv+nmy+
         q4eqPusWN/5DyEjLQqSq79SJtPJ1oHNU3syAXREVBTi3myPRBUsibR9F/M/CweP8fXQ9
         l+35K/VpD/tgzQO5ZWcgiR+tfcN4SkELqQhm80H1CgY0Fw2hLn1ZAd4vGaxi21+IIdoW
         It1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=r3x65Bb9jgjOQbVpVD0DsIjFeZeb5ydD+2igy+dBESw=;
        fh=kTbk4pccRQ7ywKItoF6eFeVMUIye+84NI5zbIP4rQ9Q=;
        b=a7bE+2vznRg41RnRlHkmWLaUPATY8wKBKYwebTXJux4OGTeotMNdjFhNNmRZGO6R89
         K9HH6tSgwr6zsOh5zfVhkv3b2kKutyVnksFU6VTugyyKplzzGO5Jku2KnF08yPl4ZYKA
         wqrfoti3Sg2kkBSZMe5mw0eXw3ggmf0R5Q4ZYA3PM6G1ZgDqAErSPMjVBhQuC9MZSZYa
         /MvPV4Zyv8XC8/OOa9F6YVTjDs88N63fiwUUOF7GgnSTW2y8auKv7zEPr8fTXOQmcBPt
         HuPzixmYKKw69GvFrFAqYxeYJmxmeqWSmGqxhJ5rkea+Jh3s1Gt/fd8VtUVT8BlEqbrS
         6zKw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1769523777; x=1770128577; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r3x65Bb9jgjOQbVpVD0DsIjFeZeb5ydD+2igy+dBESw=;
        b=Im/5zz+/k0GrbNpHF49oozm+xT9AllvdOyW2DGJ6nPjfpsjiRurwPCspVBXpLFLEkQ
         oAJrqtwNlYJq4MtuKFgnC8erV2bTmizqQROSesMZ7r60KhftoEdeBOMJDWhKkdH0SsWW
         w3QJMZw5lPqbuEWLgalX2EUX9ON9a0hRLsrXFAL3IgKaS/h7DgDS1HOvgXyq9ITGE31M
         Zvs5dg2PwNJdaEoq7BIiJ4g1WOJHVf9k3jk7mlgnBUR8kecSVtRHU7DntCZSV2QTYcO+
         VTAW78QBhpEJLBdcJlEGISAWCEvtc+w4MdwgzFjpi3vK/I0pNRwo+zti4d3zVKWKQmcn
         n31A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769523777; x=1770128577;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r3x65Bb9jgjOQbVpVD0DsIjFeZeb5ydD+2igy+dBESw=;
        b=JcHchtOOuHAH6YxcQa7ToUVkJ8IbvDYJ7IESk8s6XKv80Ah8INpSamM0I1DvD8+llq
         bto3gifwVlEdtULQdGj0CK2i7QP8J5cd+WC8Fi28s3JpfoxuW+Gi/i837YHCqRLiQDbH
         OhbQQ0IvbpY+81wN/opAHC4NVbvuahX1H+5PvUNWsjXwPq/ANPNsbG4kJ0Jl1xr3lttn
         X7RBkcupMHCRIKytljaKrMVP2U9Fr+fB/gkpsvyyJCDthKojPXYiM+ggUn+/r4wI0SLk
         icJsFRzLthA1T4QtE2cDJPuP4LuaCT2Y8XzcgS+sgs2OUMtVMuBnHIXR2hiABs1jHdzd
         Xi/w==
X-Gm-Message-State: AOJu0YxRFELUaioFQGF9tMUa7YwUPF0Z6YlGlz2q1PVGcL0XSC2+hOYG
	l3HBnFNxZ0PJLdt6CVms4V4g1msGjQ+7Ci+3bLmHlZWINwnkrq/RzPuTOuszJGeQ2v0OrmD0XXr
	Bx+PIAB7rcudy4vKjPh4OtPVa6ajvjXrHWnJ8W7cEYsWA1l7uLymhXFE=
X-Gm-Gg: AZuq6aI5WA9YSvMv6SiZauWQZEuYOGUowTvusFQeka6hjT25hfngLzLVa+0Ni4pK1B9
	3c1ApI+i/PqKy7UPh0fWuZrtqCQ5cRTHE5Bs1Y+goc0WHmHJoMT2RHyyuxT94iq77hRhFt4l5zS
	n+pZHiW5x4rsUxRv4Ar6V+k3PDMkazCumvI2UkCoDCjkxuhAF5gd45YVu9lJm+5eKaV9II3EUBb
	YgPP2bbc38BOHr8lDBRZfl9tbzjrn+DE7dgujZd3QrN3T4oUH0CfLJSR2CDONmeInha6W4mpGFF
	lK4fPVBqgOV66zXW3DZGLSUqWpHVy5nsPWOyrusIIaMftwmHXHN5ocQwipXR8yYnphlRtTWxYhg
	7FnHZ8rZIZV+ifeg6wRTrB+Wzxp5vj2mG3T/aYv32cKI3iO8v1hXStDoYEF/Gg1Q3DP/rzyR3nf
	7fskxpt5T7SQPhzE4v81ewpey+EQcAdyTA46nSLicxlfLjkxU/QwdY97IHBJsBXTxP6OtFYSJd+
	d4PBT3aJpA=
X-Received: by 2002:a05:6000:26c7:b0:435:9691:d525 with SMTP id
 ffacd0b85a97d-435dd02bd66mr2782451f8f.13.1769523777094; Tue, 27 Jan 2026
 06:22:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126181304.3312554-1-benjamin.p.kallus.gr@dartmouth.edu> <aXfrneY9fxE1-pbQ@devuan>
In-Reply-To: <aXfrneY9fxE1-pbQ@devuan>
From: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Date: Tue, 27 Jan 2026 14:22:45 +0000
X-Gm-Features: AZwV_QivGR_IhjprUvFv-0iGRQ1LdnfLKF-gqbdjopeVZrZkHznTdcOaQyRsC6Q
Message-ID: <CAB6pCSb9gx+vcroWq22SPzkzn5hkADVbFD_6M1yomQ6Oc1ukAw@mail.gmail.com>
Subject: Re: [PATCH] man/man2/mmap.2: Further document MAP_GROWSDOWN
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[dartmouth.edu,none];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-4967-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.p.kallus.gr@dartmouth.edu,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[dartmouth.edu:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,dartmouth.edu:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C799395A6A
X-Rspamd-Action: no action

Hi Alex,

Thanks for the feedback. Broke this up into 2 patches as you
suggested. First patch incoming.
-Ben

