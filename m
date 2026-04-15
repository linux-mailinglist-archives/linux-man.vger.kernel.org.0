Return-Path: <linux-man+bounces-5337-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJnNEs0J4Gn2bwAAu9opvQ
	(envelope-from <linux-man+bounces-5337-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 23:57:33 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABD0408580
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 23:57:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A177E302BDE4
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 21:57:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FCA038F951;
	Wed, 15 Apr 2026 21:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="CgWw0/hh"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC822DA757
	for <linux-man@vger.kernel.org>; Wed, 15 Apr 2026 21:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776290247; cv=pass; b=hWh/wJt8mUmGY4XDNeQcT2/o2bbMAZ1PRNRBO8nqtT6+jT7085znvWCN8NIx+E3xDrB+oteARJx2Ua9X8wsJs7akA4lvlsxo8qNMzSrpewfCNcEA9N+8zQuCjPhwWY7tlw5BuIsYh2CLLR0Ksay9OPn75iGzc8rPHwYId7+s7SQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776290247; c=relaxed/simple;
	bh=3Oh+toqNpeBppraJ90uj4LUEbxfckm2SYfCNdaap5gU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rR5z36YhctF35V/vmv+CRlfZqCxKTviXKwZiyRp20genL7OFmnM8kSqYC+S5d8sRq3u8gACsv5tIBA68+51d37q2PvudcmTAkUSdFvOJ1eCRPCYp06mcH2Oxl+ZY+6rPIOQ9IA1fgq/Vjtiaf4CnxVgcYBjvicYzQxFc1A8l4+Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=CgWw0/hh; arc=pass smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-671ab90fc1fso5932414a12.0
        for <linux-man@vger.kernel.org>; Wed, 15 Apr 2026 14:57:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776290244; cv=none;
        d=google.com; s=arc-20240605;
        b=Tm5wo7fFCvR6GAahdEet2nv9n/ELsFE3e3KnitCF5o2fcARJe+hOx6b9x2U30dZ8F8
         R26XiqyabkaCjj3NrXQg5yANTF/2QFcN2JZp7FDgoKqlyJIw+Ry4ig2E2dRdPNB6WQjx
         a12vTAtbcMkF2qj+wl78cuJo8s+p/doyfYftOS72S07vi7Rl6Gmw2jA+Qp88Qgf80oJ7
         90mOZ9ASxnob3dSNp/4ADtBueIyIzIhYLsMaeVGENgwI5D4TL+VMovv/g1Kcjvf4RgGY
         BZQipmJ8DHG0NSaQkt1s7hseJycAGWGwW6U40ZfCW9xtyX4OOJIyc7sCjnhKOVsQZVDQ
         199Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=m21yJjKxLoaQT5fh5SFv/7GfjPVK/J+GOCMWiwcrpUg=;
        fh=Kg4KzyA/f5oXLuGxwyAHzAe4YkLL8UC90hPRKuOZFf0=;
        b=Y7emYZv8vtfOliwrPh+LX+fwsjhWc3ELphz5PZwsHTJMq8I0uRcodaotWHg5HDCSX9
         ssQwozPMSc7zLRVW9kr2t6gW+BHZUXMkQs06yjO3HY84A/TAdhjqfKYfijrLqkcq3o3V
         zt1Sg7vGsEUsr4OWLcU02sexcH3PMZG1wrL3p9X6ymQ84dslGllUTG2SCi9RJZ00hQRH
         sIgdWNhWptaEZ36+1oj0bHqt/grZVt+Sut/jOL/5dTtAz4d6GWm6TzI2j+bIJHqSuoG+
         EajfTeebJoLmQIZwssOVltHPMKYtNWBvJmIwNJbFjH3Vt2UrjTDahwXH8PqMjgG52lDT
         XyFA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1776290244; x=1776895044; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m21yJjKxLoaQT5fh5SFv/7GfjPVK/J+GOCMWiwcrpUg=;
        b=CgWw0/hhnVfLvhNes5enD9RXiy/4w8tR1jI1ZUrKDGgeanmeunGAmcx3YJf/stA5B/
         5KQvkU5M+0KiIboEpNxSQpfUcz5lbz/AgellTfU3VN+tiNapWXfBFcsf1zh/L/0jqSoX
         3PM4MURwt69WXzLaz8vLwFVnmzCgh5qBxVGUGXbMIuuaWGbosakdALBCKj0gQtiqmoxj
         zkqqBROXYJ4R+crC6WEE4SUD/6AmgYyxuV4aPOCK8nOd589f4SXfDkre5DMZVoWUunCZ
         qyvTmCTP+xohoXIrkYLAr04CzB42ZsBYcWzn+xIIGniDUc2lJ/vJqsgnMkyZyi8l1pEZ
         J5ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776290244; x=1776895044;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m21yJjKxLoaQT5fh5SFv/7GfjPVK/J+GOCMWiwcrpUg=;
        b=svzgA7Bswu0vem3tw9HDDvAoPo8sddX0pDu3SEtcRFTnD/J+sqK23tNgNV4D+L9Ztg
         8dTqNV+cgrmMvBRqCufuF4ZkV4Tsm15tDJaT4z3cFulIx5BU55gDgk9GWfpW5FVRM/38
         k1vZaEwq/jo342u8q0NT0vT4Sq2Zp0KjLTwK5tQ/2l6IMtNiMuLFEz7GSLA9wpFaOMID
         z2l6F3vnODtj/TBZrRSmfMOPfufT+sJBDCCbCnlt4ORwFiEPRorhu7+QrXGpzP84g18r
         BZuhoAmTom6vNil+FmEYRTtLEIoV1tohtjB095LdBnrPp0t5W/O9BGkaH8G3ZjCmbSAy
         YcmQ==
X-Forwarded-Encrypted: i=1; AFNElJ+98KqUfmevVw8iz7TKcj5UvxST92zx78shvPLKZlYba1jNwsJiMMoSqEj6CQQphXT6aRCleq+YOvM=@vger.kernel.org
X-Gm-Message-State: AOJu0YxTbzYX2m+UyU1E/gNh+CDRtDRyi74IthM/MQo9rwghz2EVPPrN
	uQ2Z8q7RmDdBXcNRVGcW0G8/1H1w2xWrkt5r6jxyg+RfN4R54uT2EsUWScp+dsV+F3WYGRu7+b8
	WbcuX45935Y/xMMcFS4sy/XnmIPdDO23i+ZXzVLsh2zmiFcjP0Zk9thuONA==
X-Gm-Gg: AeBDieuWEEWPZ+jNW6lTb9e5Sbwmp3QE3wE8FZkfTopJWmuLwNFwQe07aNJHaElKiFl
	yATW8WK2F44lTIQ5d0kqqNkicghSHWbjcqliVti8+9aWPlQ5XvUDKpDWvvnd7C7u5F4hWifvVbb
	UiX5c9knorjcXCo3MF9JA3cB8imjWlATkMLv21NoYcsXrGNPnN1MSORrsqoPvHWCqdT72EbLiAF
	Gzg4H/7LIpy9BeYet7P7Tiawp6+8c6LadVIxrO2yGY0OShHZ7u3B8GmdAVM0emhq2k0M5pGhR0R
	cXmRxP4gM4/xIT7+dVKH9PQajmt10aCb2XkUKId1cM7nWXekZ0bTY+Bm8p6H2SjtWTjjeXWnO5t
	heRLny824vGOvJ3ziTiCgkgkz5HYFvgcFqSTmlzMXO595bhHpd27pCaI9/clAqg6fQUZicjzcSc
	VKGJM9JHTahkruaViJHhVT5wZ2Tsw7LJ7xpC6tZDAbuSde21fp4LJtLs73ZcL38DFOdw0=
X-Received: by 2002:a17:907:25c5:b0:b9b:e4ea:93a9 with SMTP id
 a640c23a62f3a-b9d7265d15dmr1218260366b.24.1776290243881; Wed, 15 Apr 2026
 14:57:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAN6Ha9b5Tujw=sB5MwhLhnt1XJodmH1TOfeZWJk_VWnWE_smzg@mail.gmail.com>
 <20260415182417.b6cvefbzk6ss3lmw@illithid> <CAN6Ha9YYK7jD6D-_eKhHQA0dT3kfkGZuka31Pg+ka=mzt+QtxA@mail.gmail.com>
 <aeADVnt6NpZ8qC9E@devuan>
In-Reply-To: <aeADVnt6NpZ8qC9E@devuan>
From: =?UTF-8?B?RGlyayBNw7xsbGVy?= <dmueller@suse.com>
Date: Wed, 15 Apr 2026 23:57:12 +0200
X-Gm-Features: AQROBzC-DuT9FxizFvkTt7DAmkeL2aait4v1RwnEwRUj7Z14ReQIyUKFH6HMVRo
Message-ID: <CAN6Ha9YD1T41jTLDux_fwFGQnWEWKQfwPGUC54GrRRG5XXtXog@mail.gmail.com>
Subject: Re: [BUG] typo in man2/readlink.2
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5337-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[suse.com:+];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmueller@suse.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:dkim,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9ABD0408580
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Alejandro,

On Wed, Apr 15, 2026 at 11:36=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:

> That's not what readlink(2) documents.  readlink(2) has a semicolon (;)
> after the fisrt 'size_t bufsiz'.  That means it's a forward declaration
> of a function parameter, and not a real parameter declaration.

Ah, got it! Thanks for being patient with me. This made me realize
what tricked me here (other than not being able to distinguish ; and ,
on my particular terminal today):

In `man 2 strlcpy`,  or `man 2 strncpy`, and probably a few others the
forward declaration is in "regular font" not in bold/highighted color
for the type. for 2 readlink the forward declaration type is bolded. I
derive a visual clue from that to scan for the argument types.

Is there a particular style preferred? Either strlcpy/strncpy needs to
be also doing bold for the forward declaration or readlink should be
changed to not be bold on the forward declaration.

WDYT?

Thanks,
Dirk

