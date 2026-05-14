Return-Path: <linux-man+bounces-5499-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAFBFlatBWrkZgIAu9opvQ
	(envelope-from <linux-man+bounces-5499-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 13:09:10 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A32E0540D0B
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 13:09:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46B3D3011F19
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 11:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF477388E5E;
	Thu, 14 May 2026 11:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="Cz6eL/9k";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="ltmk2B5w"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A7B3F412A
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 11:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=85.215.255.25
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778756945; cv=pass; b=bS/rbxbnCJB99j+65m2+gpi8bHrUcVaeCenx0wet+w7spRQoaXs5+LMYTy8TKfEAXZkEdjwlz1UoOCz7r1Ee7eaIrpxWH1gh5pKa/JSTVqRkOpdZmV/ffR6k7g7EmjKtLUuVu05i4URMLPVoOtpP/MeegmlOPM/AokwXCBLUGMc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778756945; c=relaxed/simple;
	bh=Vv7WL8JL0OZ9vJ9e5fy/DLeqk7jiRPatk/NBGWcnF1k=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=oFzfiEjPpeLmph67vb9Xhn++SwLrIvtFvx7la3NCz/VjK3MUGTvSQf7SdvO2/yuHS05p+XOSvU6q4QWQ/KYsQCbcMrKu/qllg2BkcGtNZVXbS92u1GcibM40p1z6zaqn7iiCEXOvIGYC7n6XUZmupxdexGA1aA70V+qRlDde8Jc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org; spf=pass smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=Cz6eL/9k; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=ltmk2B5w; arc=pass smtp.client-ip=85.215.255.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1778756216; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=SWCn9vK0k2n61+1jPRebZyASAM86RAQ1H++UBjcaJzKO2tGwuauNYSzn2NXDY82E6c
    y/0bSlNQ7+LuYXbway+kY2PDHr0AoNHE0msBP5wakx8hP3JJbVJgoMlHD5z1kIXwdBEP
    o1/HZ5Ftt26FNJHZ5jHpIQM1ZGGauzNLtQI0reSIERnwepEGG4wYb8SX3Cwbg+K3dEh0
    rDQCynpwHdBx5NFN5A5SUz5F8Pi+XX/0f9Epn02YdyXx8QtWwv1C40oGJvnkWGELwIIR
    Z/gUxf5EIhQ5S/A26uPn586H0saSZ+AJkbfDmmgEY4nrpNWOfsHM2Q7tr7OlgNjk2xqm
    2S+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1778756216;
    s=strato-dkim-0002; d=strato.com;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=W4wyKGLfhGfuBfPQPZLgbCUynNACQrXnV8o8vD9Sloo=;
    b=XYlAFOJ82PiJ00Xv1piTlDwelUpwk1Fz44nUYb7rC7MOaWD14FwsVdoS4YuC6J6Rq8
    e9cjjb+XBCubkcizrLAtdli823gsGAdIVLeGF4uhnOOIBaggFLEdr9RRlBLArOYTfR2i
    YdhjLXMFV1zzD6eULs85PEilCGJFhXRhX+xvg5FaKiYfuuGRCvguxmDnxXt0+o9LL2F9
    g5D1yu2Yj+o+GYcdL0ggei1WKz2j1vePCgPzkLv4MZGgqanK1Oqs/GSUHbBsl7KET6lb
    wRvVSOnLDDvzmqaR8BNivDvz5GVhs+p3DUMxHC3GGbNY3pMhvV7zT9Mye7HXCSxcWidK
    gGtg==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1778756216;
    s=strato-dkim-0002; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=W4wyKGLfhGfuBfPQPZLgbCUynNACQrXnV8o8vD9Sloo=;
    b=Cz6eL/9kKCQShH7das1o/L8kYBnzLVo46t1eF9Oo1FsmKKdhrn8kija0nDg3G7Lxr8
    r3L0EQnL1L4p6Oo4LIUxu25FfRl+9AWaRQKdAFjp0vsD0t2l8+jDe99vWz2YdHpsNLZb
    eNibECRdcoHtm9dtWVoD3B1CvgRm+QbBvocDD7vhjqPVKTIagZPU4ox9qeoQWVpvcEc8
    0Pe33+hebCUQCLgKLo5Ftha6hXVZsCUnoY6qbUH9Y1mnNQd2LM4HpK89k1IEkAHvmjw+
    iYDYTrkf+KUzdMg4ChCou3X6+rkdnoYXR80E+vraXhkCtbQMzU46obmz9O6TWmcMWQ5f
    Hj9g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1778756216;
    s=strato-dkim-0003; d=clisp.org;
    h=Message-ID:Date:Subject:To:From:Cc:Date:From:Subject:Sender;
    bh=W4wyKGLfhGfuBfPQPZLgbCUynNACQrXnV8o8vD9Sloo=;
    b=ltmk2B5wkPJZCi64MpTRUsg8FHJTMqoOchjuxfluBKpZoyOSdGRIaIaTXgo6/a7gxN
    pvTNTGku6sDsk2J1WCAg==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlLnY4jECd2hdUABIYZgv6aLDTL6Xv7xN28vQ8goKMrR/7NYCSr6k+btzwwWnLK1g="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 55.0.1 AUTH)
    with ESMTPSA id Necda424EAutyDC
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Thu, 14 May 2026 12:56:55 +0200 (CEST)
From: Bruno Haible <bruno@clisp.org>
To: linux-man@vger.kernel.org
Subject: clumsy cast in dlopen.3
Date: Thu, 14 May 2026 12:56:55 +0200
Message-ID: <21436742.Yz81rIOvuz@nimes>
Organization: GNU
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Rspamd-Queue-Id: A32E0540D0B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[clisp.org,reject];
	CTE_CASE(0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[clisp.org:s=strato-dkim-0002,clisp.org:s=strato-dkim-0003];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5499-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[clisp.org:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bruno@clisp.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

The dlopen.3 man page contains this text:

                  *(void **) &cosine = dlsym(handle, "cos");

              This (clumsy) cast conforms with the ISO C standard and will
              avoid any compiler warnings.

However, such a cast violates the strict aliasing rules of ISO C, no?

The proper workaround is to use a union:

  union { double (*cosine) (double); void *pointer; } u;

  u.pointer = dlsym(handle, "cos");
  ...
  printf("%f\n", u.cosine(2.0));

Bruno




