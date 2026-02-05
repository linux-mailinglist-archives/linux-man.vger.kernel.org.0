Return-Path: <linux-man+bounces-5030-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IBGHnZrhGl12wMAu9opvQ
	(envelope-from <linux-man+bounces-5030-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 11:05:42 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BC15FF12C6
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 11:05:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A08B53011F3C
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 10:05:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5063A3A1D0D;
	Thu,  5 Feb 2026 10:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="EuIqBknc";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="kdH2K1Tu"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB7533ADBF
	for <linux-man@vger.kernel.org>; Thu,  5 Feb 2026 10:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=170.10.133.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770285928; cv=pass; b=gClgq0E8+o+l8IRlMcgxgK8q1i3vyrs+YR6G1t1Y1Ckfl/wDXP4pNm+92lQ1l4A287ctC1MgftrIritqVowla2U6UJ08tgm91S4X6qPq02YCuleI/Jz6IkSl0IodK1qYas3M5oGTrKPh4FCioU9dVYTeoHCLeue5vG+uSNqOpgM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770285928; c=relaxed/simple;
	bh=HE1pPFM7UYRgxZM2z4w5T/SLtYtANnuHljssl4joYXo=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=CDJ4UKXtKcBMPtC0C5cVecxJ3lTpY1ZpYngb77jWwg+kKGQDz7uvFcJu9sWRZtl/7BZpi0U6FQBQzyjv+s7Dalc7z6DYcDCTbqsuwY+jLTNsBTTl+HzTe5O5iQ2SojIFaO4xLU1TzQJzH/QUgdVmEF52bExcX6AB31CHY7JySoE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=EuIqBknc; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=kdH2K1Tu; arc=pass smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770285926;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RAVQq1hzgyL5IjW4/KNEjJRTv8cJDdIiVKBj6MQhfE8=;
	b=EuIqBkncj54S+Xwlp/Kpp8KlN2PTtYYVoJXn/xKBvdVRAW8aXUg8adNsrzvO775N2eQV7I
	Yb2WCv6N4SftSIR9WCmcszkQciXPbcUGjLmwEOd+jaMdvgW7DxFOUDtW8jdRBmNFhZhPhl
	WOtjna8y3tfiAwT2BZY7HYIPmAudZMc=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-596-cO7prnR7MqCFcxpkTh3jyQ-1; Thu, 05 Feb 2026 05:05:25 -0500
X-MC-Unique: cO7prnR7MqCFcxpkTh3jyQ-1
X-Mimecast-MFC-AGG-ID: cO7prnR7MqCFcxpkTh3jyQ_1770285925
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-79431a41d9bso11485137b3.3
        for <linux-man@vger.kernel.org>; Thu, 05 Feb 2026 02:05:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770285925; cv=none;
        d=google.com; s=arc-20240605;
        b=IhsPiPAhq06We9DTl0l9ttysFuE2a3yGD6eq9nc5LsGy5b+eO+KOw3iIUwK9ResS1+
         wmlYz7d6v0CtW8wYWU8U50yjwfjXTRnfcEVp7quNzlRlbvMPqA3TgConDxqUNCY7YHxn
         hOjWE6ef0QSh4OJBCWUK1q4gO3fgzKA55OtBIBm71jmawB+HibxEZ9o8pLAxN25TUk9F
         vHDKGi6Kbj2epzqEtyW/cERG1htDm8G7feBt/wiPknPdeoT+cUyHiL6B/KK9Yd2YHN4B
         2wYQ12ySLMMCxNxvTO9s4Sz4RtqdoJMNcqBKFtM85sQOnq3JeMJSr+IuLewKSVG91XYT
         Qjxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=RAVQq1hzgyL5IjW4/KNEjJRTv8cJDdIiVKBj6MQhfE8=;
        fh=OclAtLKJTQTIvPXBcbgjquIcuF1L0TED2I15vb2Dds8=;
        b=dGiGQj+RxPqufwNo4HK4f2hfQfT11EAwhnfR89e5youUKxLl7cDe0qgqkjmJ4fWq96
         ru/YmlKjk1Icn+4VGebw59TXYiPLqVT4SoUeCCwOuWS5PzAjQd3DCpuMt1L7UKE0rA2c
         eTX2XMhxMmV+vCn3Az8NJixDpvCOLmRtRxF2DPcpsLrl0bbjP5ROqtxGlx895d570LtU
         l3XNq4HiWNUl61/rda3gwN1AM9DaUkkeB2Hyd/ZFWE22qCFR3bcIIOtOFUs3xYgj7BO9
         ceDoxsLJt2vNQb7WA42ucxyI0NICWU0Cp2ZPrQAJBR7DfEB9+FIoXWlJ0d8u6sBccQDn
         me4A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770285925; x=1770890725; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RAVQq1hzgyL5IjW4/KNEjJRTv8cJDdIiVKBj6MQhfE8=;
        b=kdH2K1TuqierhRTvXBD3fwIN8NPpsZInkA/tr/p6+q7wIlvC5QXIjdgWZHYVSoCZDC
         4Fyg3FSornwBXoSk0fUXdDnOdbBPuyJxrt1gnXeoZP7h6Sd15JKX6TykC8B/DRxbw9bK
         vv0yzf6iVrvakhF0R7WWP2CCtVHvMlP5EBnID2L5H0RHilwrIkBu3LAh0y25Sy23WXCb
         crQSz99nnk+RxPmQBo/yPl1OLZ7hULgd3AMn4V2ARbnQ6BR40lH3ZFDSyrCHfCBynwNC
         YWnOtgSkaOU6cVRZliihKYSH2d+PUhdc++JIDKAsIW6qTtPph17l7xGKnq8vTqIZl+AN
         PEHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770285925; x=1770890725;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RAVQq1hzgyL5IjW4/KNEjJRTv8cJDdIiVKBj6MQhfE8=;
        b=DjDliBPnuJxOK69FhQdQxGyWF0j1jrSSijy7B4sguxp8pquFBMnIh03a/x3bYRpTDd
         hE/0L0cIgp58oFvaAYqQJnwS7/F5l1ggnfycEBCynBxcx9sVhDUyw8K0HwVnBAmU/GIE
         ALIQcBxXClZyhAtiQXoEPvJaB8Gsn9VIx42M6B2+0hEOSrTppGRidUr575cA2iUjJZYF
         i3n3EsL5coqlEfGwnLAsXyftp+njiGvmZ0oHNYt8UBq1UzAFmP/j4WOnTnOs9aG4UGTy
         ktqKtr4GyRqb1RRENXgptfNLQ8F84/M/LNk69QFJ34QQ4FfK7Z6iAQ+L+eHCaOnznQjD
         VKaw==
X-Gm-Message-State: AOJu0YyyrMVd44K7l3RRKOWiU4iTUtOeP7BRF83/fzBMsP/41N51YGhu
	BmQUV8n6niBOqJXP8dkKLfrfw/tigwnSsisKht0vFtfIFZBZPs2WUhMR/WTr7DMKiwTILKFPMON
	pgSoOWVM/P6PAAL0z7ivDmaQsQdMI7La6UsEvbtrvKAOrlOLlB3vIDECwk0piSy9utFwGUb8i92
	CWNPoihgAGiJH+QJ1X0Umqji9wptvJiQw5SUbxNfISOTyzf90=
X-Gm-Gg: AZuq6aKmxh1gSII9z71hnt6CM5/TG8JpGLsOs9p5q4Bl5VkjVUnbYuO2XII9LzQ1Psw
	lRjhjtRHMhHKgVxE4hUNSymUypq2+DVUJ/yFw9nIWhVuI6y68hoNqWd+nABUmp6lsaIeCVTRnDp
	6Yecp/xDm95/RS4uGy0tpsEdL30/RmTMR6O3FCGN976gyqxySjI6Rfgv0BBcLb8F+pbH4MNQWY2
	FV96yFyGYBkefgYyyVAo3018MTZ/RhIDSrg1i3gJCfDKyrA2MWHe5k=
X-Received: by 2002:a05:690c:d8e:b0:794:2019:2b7 with SMTP id 00721157ae682-794fe73f89amr56514987b3.42.1770285924938;
        Thu, 05 Feb 2026 02:05:24 -0800 (PST)
X-Received: by 2002:a05:690c:d8e:b0:794:2019:2b7 with SMTP id
 00721157ae682-794fe73f89amr56514817b3.42.1770285924620; Thu, 05 Feb 2026
 02:05:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Jonathan Wakely <jwakely@redhat.com>
Date: Thu, 5 Feb 2026 10:05:08 +0000
X-Gm-Features: AZwV_Qhx1SNvbXNfYY0KbFadffWozwQhaVEiuJTmSjIbFB6F_G1uo_ebhzyFOZs
Message-ID: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
Subject: aligned_alloc man page and restrictions on alignment values
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5030-lists,linux-man=lfdr.de];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jwakely@redhat.com,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: BC15FF12C6
X-Rspamd-Action: no action

Hi,

I don't understand what "except for the added restriction" means in
aligned_alloc(3) here:

      The  obsolete  function  memalign()  allocates  size bytes and return=
s a
      pointer to the allocated memory.  The memory address will be a  multi=
ple
      of alignment, which must be a power of two.

      aligned_alloc() is the same as memalign(), except for the added restr=
ic=E2=80=90
      tion that alignment must be a power of two.


Does it mean that aligned_alloc doesn't have the power of two
restriction? If so, describing that as an "added" restriction is very
confusing. What was it added to? It's not added to aligned_alloc if
it's absent from aligned_alloc.

Does it mean "aligned_alloc() is the same as memalign(), except that
alignment need not be a power of two"? That would match my
understanding of the C standard, which says that aligned_alloc() has
well-defined behaviour for invalid alignments, failing by returning a
null pointer.

But posix_memalign also has well-defined behaviour for invalid
alignments. POSIX requires that posix_memalign handles invalid
alignments by returning NULL and setting errno to EINVAL. Which is
what aligned_alloc does too. So what exactly is the restriction here?
Does memalign have UB for invalid alignments, or does it fail and set
EINVAL? How is that different from aligned_alloc and posix_memalign?

Wording the linux man page in terms of "must be" and wording POSIX in
terms of "shall be" makes it sound like you get UB if you fail to meet
it, but as far as I can tell you just get a null pointer. The APIs are
well-defined for invalid alignment arguments.


