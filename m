Return-Path: <linux-man+bounces-5656-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ijFSNMTFMWrWpwUAu9opvQ
	(envelope-from <linux-man+bounces-5656-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2026 23:53:08 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4718A6957CF
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2026 23:53:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=OZ7pZ0TE;
	dkim=pass header.d=redhat.com header.s=google header.b=PW4fIPbo;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5656-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="linux-man+bounces-5656-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52F2D3049E10
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2026 21:53:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0703803E8;
	Tue, 16 Jun 2026 21:53:04 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B15A331EA5
	for <linux-man@vger.kernel.org>; Tue, 16 Jun 2026 21:53:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781646784; cv=none; b=hp/IRewrrjEsHrgphePv10ChZY2/HRW4d8tNrgvvZ1cY646vnen32tYeqx/ae9C86uHqNqrftsr8I5uXiKbEigu0XuDnU7Nd0N/tDvPkCd8OSXJRjRwxxxwCPa4WofEtz8XTN9NTkRv/jKx0LfpV+9XqQWIZPdeR8/srSmPTHqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781646784; c=relaxed/simple;
	bh=ozXxA496cy4c7pZlAJZcWvXvD0NI+8QF+FmcGVSIv3s=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=fanpIOV3QDirSv8N8SHpO7kcFuF9hU20piJKLetaRcsnK9EGKSIzRXdx7mYwseUay6KpkBOxLpukRXRQXfrUhIccLVT8QNWou/82xgvrHcK6Kwbbg2GEJkD0Uu5khG9+efVirwybo2Y4XOPDl8DAzzKWSU6/C+lR+IQwJn7H5EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=OZ7pZ0TE; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=PW4fIPbo; arc=none smtp.client-ip=170.10.129.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1781646782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wP4Dup0BNTJzy5JGue2n42Y8cFH9+s77xB2Q1Y9OfVo=;
	b=OZ7pZ0TEfDlpCm7JdDAGO//OIbHliBpw3cJHmjObxmlfff06fhx56Jt9q8pE1KlZgIS8kA
	EkEp9R33NUw2QUs9K00LdxYm06USKolbSwHtNzUabFgcIImjLQ92OSVlCSzdZziEcjGIqI
	oKc5ApiyOxdussLnWXHHUAvpobrGJZU=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-465-iC0gT0h8PwWOvXGVNFSbcQ-1; Tue, 16 Jun 2026 17:53:00 -0400
X-MC-Unique: iC0gT0h8PwWOvXGVNFSbcQ-1
X-Mimecast-MFC-AGG-ID: iC0gT0h8PwWOvXGVNFSbcQ_1781646779
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-4625e71d3ccso96060f8f.0
        for <linux-man@vger.kernel.org>; Tue, 16 Jun 2026 14:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1781646779; x=1782251579; darn=vger.kernel.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=wP4Dup0BNTJzy5JGue2n42Y8cFH9+s77xB2Q1Y9OfVo=;
        b=PW4fIPboIURtZwl5Qgm/khjheWiu3RjCB8RypgoBvDHoEmmy8MyhD9SzC+Q8povqcm
         YJ2f1iNXFm1FGcQ3893ICPg4wfUN3Ca6UeMEWP7oI+hQaOptPGh2XoZY6nqGPSWpDJ7V
         6FS6VSyJJ2VGx/OYZytU3b17UvUO/0lGVqnvrfnLB7gBpuSd+13k6FqIZ/7BX+QVy2rJ
         Bz5a3MNs+/cWjld9v2rtCTvZ9/20Hfm7oQh5xpvJhM1ZVgMDOVz4K/8lFvDf+sVZ06Nu
         VjY7veZ6cN6te21kZjzWS8sztDP08yfejXcQaoEiwMwGT1/8EJ/Th0+O5EPsRtm4sbLJ
         NZZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781646779; x=1782251579;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wP4Dup0BNTJzy5JGue2n42Y8cFH9+s77xB2Q1Y9OfVo=;
        b=qekttw1rGBIyRVxl+q4+gNmPoL7MuyXLMaiG+9lcDIrMOutjibQCA8eYDZglDqwbDD
         BBLaB3dJwbicmVcKoMXvbvbNj6UoWx5msRarL5R3lDWzl2HfM94mX9V8AZGmkqtrUoxn
         SVoQMdNa8N5lktR2n3DKaIBQtuZZkTLA3V7VaqGVFxD5QEpEkgBHYN3XNm1FaiiUYfjh
         ydsQvFHyglHS/NUSOgPQGw7/C+SbmSDpsn47BZXu6dENLARyhE+0BTa1NuKDOX/VexZe
         VjCCRP4I5A0cXc4vn9SkUbTHElaQeCtDI843v1eRZr6dHYvyZDdvdiRZ57J39sSTSsqN
         3dTQ==
X-Forwarded-Encrypted: i=1; AFNElJ9y8pHQYfF3sTe6aUnnsL7GY25xMYe/vXGdNj7uDXdWTcevCia1Rs62Y40cifuyPs3DE0Hi0QZakvA=@vger.kernel.org
X-Gm-Message-State: AOJu0YwbmXA1kwiHjGithveFQEcmq5QfgaaGJFg5mYSQ6JpAljjvKrQi
	2FzrxLUBK+V2uL7cfj6CY+HI6PInjak5ja6GhleFeWWpyQvuC0UCThiqoTcJx5hb7Zm9Vr/zZdH
	NN40UlFT7qXZRx/S5d6TjpKtNkjlxTIRpu0K72tS58dvBd/wSYvzNIOdAXDqKfW4JK51NDg==
X-Gm-Gg: AfdE7cl9cxMS83yfEqYp5K0ugP4nHODUUKvIDCIEXWGBDLtzQl4h/oQsbvJ4OhU2Mxu
	bKCMdCmkSfafmSmMad1I0VTo5wni+acSfID8GCXHb7a1Dxo4fwmNyaK36uZmHfAOdWrlhrrpTYN
	cZ39S8rN5PPw499PxSGi104dCd3Q4+lXFBGcMnjMZ7eHm7W4l0aq6cpqA7YwfNPQFF1dzLSfe0v
	dX5RqhdphcwzLrA4MeMumyykZ6+m46iAz3CV+2g8mPCgJhM0IUiT2y50V4hup7h12gwJ4DdC02w
	l6alZBj66CnfIbbQXzqNm9Ec5XMpOqrCEvBCmtkkpZKtK7qc8V2XCJgl8omzfvLl0erlymUqqJw
	ZgnKZcbTiFqcW7Rz64TUmViXD1mpT2+O0FhFaOyerC6llIKb7vbtF
X-Received: by 2002:a05:6000:25c8:b0:45f:3385:bceb with SMTP id ffacd0b85a97d-46268f14e59mr720974f8f.4.1781646779483;
        Tue, 16 Jun 2026 14:52:59 -0700 (PDT)
X-Received: by 2002:a05:6000:25c8:b0:45f:3385:bceb with SMTP id ffacd0b85a97d-46268f14e59mr720947f8f.4.1781646779098;
        Tue, 16 Jun 2026 14:52:59 -0700 (PDT)
Received: from digraph.polyomino.org.uk (digraph.polyomino.org.uk. [2001:8b0:bf73:93f7::51bb:e332])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f26f3basm45453590f8f.12.2026.06.16.14.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 14:52:58 -0700 (PDT)
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.98.2)
	(envelope-from <josmyers@redhat.com>)
	id 1wZbiL-00000003Dqb-3AJn;
	Tue, 16 Jun 2026 21:52:57 +0000
Date: Tue, 16 Jun 2026 21:52:57 +0000 (UTC)
From: Joseph Myers <josmyers@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, linux-man@vger.kernel.org
Subject: Re: _ISOCxx_SOURCE
In-Reply-To: <ajG7DCFNQPXb11nr@devuan>
Message-ID: <a514153e-7842-0cfa-92c9-a4137c58b153@redhat.com>
References: <ai1DVieT3gTr4J5S@devuan> <c357346a-ecd1-761e-47c4-5c1357b32c59@redhat.com> <ajBpIbEH_7KkJrld@devuan> <b22b20d8-b4bb-ce86-7865-87ac4ed7df25@redhat.com> <ajG7DCFNQPXb11nr@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5656-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:libc-alpha@sourceware.org,m:gcc@gcc.gnu.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[josmyers@redhat.com,linux-man@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josmyers@redhat.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4718A6957CF

On Tue, 16 Jun 2026, Alejandro Colomar via Gcc wrote:

> If one uses a modern GCC with an old glibc (which doesn't know C23),
> then, using -std=c23 will be problematic: the compiler will enable C23
> language mode, but the library will entirely and silently ignore
> _ISOC23_SOURCE, because it doesn't know about it, thus falling back to
> C89 mode (I guess), and thus will for example enable things like
> gets(3).

Since the relevant checks in features.h are based on __STDC_VERSION__ > 
something or __STDC_VERSION__ >= something, it will fall back to the most 
recent C standard version known by that glibc version, which is probably 
what you want.

-- 
Joseph S. Myers
josmyers@redhat.com


