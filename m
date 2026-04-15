Return-Path: <linux-man+bounces-5334-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOwmCu3u32kCagAAu9opvQ
	(envelope-from <linux-man+bounces-5334-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 22:02:53 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 901DE407862
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 22:02:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6DA4630471D2
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 20:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A23563822AC;
	Wed, 15 Apr 2026 20:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="G3IT/l+E"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FAC346A08
	for <linux-man@vger.kernel.org>; Wed, 15 Apr 2026 20:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776283267; cv=pass; b=PdPse2GCaLup30OwvDH9wfWQtS5O6F0UvTsluCUbRZK69PEwJ5yZMJ4LXmgOvpFd5jsPz7RXql7gT+D/HXFgZTfvyDQcetz1Wf7albquRXeUmbvaZeeVnmB9/CUZO/QvJ7zp6VzW5FQirm0QShVe155Bz7hmSmCrkn7lI2/YB88=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776283267; c=relaxed/simple;
	bh=l+7V8/NipQOuTjJ5zX+Tip9TgkxzAL1xAZn8bjkSqgE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Pxus84nINfzKfadP4Fb2OiXcT+UPK3AjIU2y09xv4rJHJqptfppk7sQiLogOC2pBUW3Dd06vQFqW28xrzq5qm9foj1nB3tA8x4cMEP3oG0lpgNejgVjalOlX10LxV23khmCGThXCXS2oPn6hVnkRPnkEEvp6wdQyH5GhmpYCcSg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=G3IT/l+E; arc=pass smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b9b1ffbb9f5so1010294166b.2
        for <linux-man@vger.kernel.org>; Wed, 15 Apr 2026 13:01:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776283264; cv=none;
        d=google.com; s=arc-20240605;
        b=SDXaXhY6uZ3HoMatgnYyhc/2vE6T+ySqSO2ZpMYi1/DHj/aRcyrxHZsd6vcGW4UIrj
         DLz2Lf/cg1l5+M9GSwcPc7PeKHaFNtSw1KM7aq1K/ZM5kGOuaA2xZMwSoCRe+O7dF2n6
         yaiA7d3L6tRVF8qEHq9YgizxJnG5KP119jzjPBqCKWyrNVWWHF1pC4YF6XzaMq9a80fv
         vogH4ChKIVuXCfvlK8x+wD36ijYlY1AkDDbDiGTvALbdL8k+VDGfJ4RmFvv/Fr8hKT87
         Nyc20HwpMeularvtdXq0xnWCts00HS+e2lI0/0drL2gDG0/raVPU8OpdduTMk9z78+uY
         UqPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qP4Emrnk52MTac6K87r6Ysen2EeNpeoDgqiPnkPMxjc=;
        fh=yA/a1jPVd947bHcWNFUYvgo5z/VIeE7zYBu0B/aM4GA=;
        b=SSjt/IkVlcWTfCU5fjk425X8Zagc4491Eo+XyfY1p4M60d/qJX+qxB5JLDXPO+Zn8x
         z7vdn8wUGSCbGb3FauKt/ejC91BBCUAfNwjl3NybtkthzkTn+lMd3EAcxRaMBwbjZMC3
         eUFiWSP5Eh44Xs66/NPUeVnRITFVxbM5sC+y0weJaZyTzfd523F43hT06EAkgzCTVHQD
         4FR0zom8kJYQ44lFkRQMJn/BzbxHgUFEvrSSCYl8r2jnZvfUbaI0Ufu4ftL0x4cwInMA
         kloorL4DvLkGD+EgyWcR2xE35xrKT9g+/6Q95GulLDe4k848OWJ5KCvHu6lhmPzgk9jw
         Zi7w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1776283264; x=1776888064; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qP4Emrnk52MTac6K87r6Ysen2EeNpeoDgqiPnkPMxjc=;
        b=G3IT/l+E1gT0CWt4PcXMH2rG83EVLpTQB0+iDj1X41/tiHlufykHRNrn3o3jbsf7Oh
         ipj9tQ8O4mGuCx0BbOK0Swwz3ds28Xwhl/efjNCjR48p6l2Fa3qgHWw3j3l5GzktcibF
         w7RQskCr+Rk0dOThqva68yzutQgcXR1RLJ2B4wOKAKZJzHF6/lfyCp3CVN8PADjTXVbx
         D8d1HNzbFHPbhjOICdRUObkKkx2X7PtZrYeGq0OqStID3vMd88eRVcuKzAnbYBeWjUUW
         +G6liCHrnYK5jhL8DiecoVffCHKpkvFbBjCSNCYHblEgdQ0p76j3lhcieymNzCx12kLn
         tkIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776283264; x=1776888064;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qP4Emrnk52MTac6K87r6Ysen2EeNpeoDgqiPnkPMxjc=;
        b=fxlUhVTqq5iHtOm8DyIuDV26eFru4jqCfrJnDY8tjMX7tqs0ivAYSgHNniS8Z139lr
         MZwA2AmIblFmCa3d55KN/z3z6F//+QLkbG15cnWHiLCFPsV4oNUF68/NqHomCWo4mfxP
         1RV0Ocqek5ZEy/frn3MxmfzRK5Z2z6XugYWd8voyrvwfMeArXs7o8rDlCc5/nYK31ghW
         ZT0RYt+ZWiIGzQr1vbjs5ROYyElQvLu0O9LCIuzPn+Lg75eSoiHF64ut/XS/MJY6Qok0
         2kSxk1XiILzQhnil3yZdnWor5HhkwMaK8C2ZLOMkj/IRDAy2S5X1Zjbb7kAiP0F0u6PY
         nY0A==
X-Gm-Message-State: AOJu0YxA9Isqc3FWsG+bxdLol8bQvGdzx7/VJ+jy4deB+IqrUb85iA7O
	qU5P8K84heSTWlRMa9dysGfjYwq9cqidiqZFt1X6yv8aEa4B8/1Z6vN05/LVvCzSbShUyjaDmbo
	c1TLAeCH4PZ2tkkIhnKWfN7ff3Lz8dFJg0Ca4r6n3Zw==
X-Gm-Gg: AeBDieuRbBK4x/cIOUgos+lr+scaoNEY+8Od0KWWC1QQG0bRCUF7TX5z9NuxbftPL/L
	2DYTsbMVEjrA0SB6VRZz0aTogVhg2Nai27i6NvKxF2cVRMSs7pbQnz+s3Ng3RHp8fOrfY6umT1E
	Ranz4hPjyyOUSuMNI5QgfvSMyuQ/AAFJX6pIt82jJDtu3qvV2qHFCm6zuP1PKNrS/3mbl07Rb3Y
	deqb2AreTykXPynpLwxoi1mVaQVz53KuaeI9UxWaysdFI6fnWmh4sDviqyCIuztsmEe1hn96ID9
	zD9/2fwYXtGT1CCRcZuVHGZS2ER39xwySKJP5cRsySo3xuea7ZNtlsBkTxaZ5fbaDYe7VEihuph
	PHI5Xlma0HafRNgbcqFslGMKz6tg6Eua2a5IRrXsKuHHy0yShRZAstMM9Ajg/bqzicmI5v6L4PA
	GfhspBnt7w9SV0vOTuVKBXqUV6p/pfFxWjJI/fr0chpJryZaVY4woGqxHxq6OqgTqPAvg=
X-Received: by 2002:a17:907:845:b0:b97:b2dc:91e2 with SMTP id
 a640c23a62f3a-b9d724d93bemr1236669066b.16.1776283263931; Wed, 15 Apr 2026
 13:01:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAN6Ha9b5Tujw=sB5MwhLhnt1XJodmH1TOfeZWJk_VWnWE_smzg@mail.gmail.com>
 <20260415182417.b6cvefbzk6ss3lmw@illithid>
In-Reply-To: <20260415182417.b6cvefbzk6ss3lmw@illithid>
From: =?UTF-8?B?RGlyayBNw7xsbGVy?= <dmueller@suse.com>
Date: Wed, 15 Apr 2026 22:00:52 +0200
X-Gm-Features: AQROBzA7PS7A1XnvMPLvt6h46CskT6XALLUuyVYyCvmJkvhLGHWp6fFZyA-3aUw
Message-ID: <CAN6Ha9YYK7jD6D-_eKhHQA0dT3kfkGZuka31Pg+ka=mzt+QtxA@mail.gmail.com>
Subject: Re: [BUG] typo in man2/readlink.2
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-5334-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmueller@suse.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[suse.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,gnu.org:url,suse.com:dkim]
X-Rspamd-Queue-Id: 901DE407862
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Branden,

On Wed, Apr 15, 2026 at 8:24=E2=80=AFPM G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:

> >       ssize_t readlink(size_t bufsiz;
> >                        const char *restrict path,
> >                        char buf[restrict bufsiz], size_t bufsiz);
> >
> > I believe this is a typo and it should be:
> >
> >       ssize_t readlink(const char *restrict path,
> >                        char buf[restrict bufsiz], size_t bufsiz);
> This is something of a FAQ on this mailing list.
> https://lore.kernel.org/linux-man/adupQhfJQ7kws17U@debian/
> It's a GCC syntax extension.
>
> https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html

Oh, I understand that part. let me try again. The Synpsis shows 4
parameters to the readlink() call:

  ssize_t readlink(size_t, const char*, char buf[], size_t);

I believe it should actually be 3 parameters instead:

  ssize_t readlink(const char*, char buf[], size_t);

with other words, the first argument is a pointer to the source link,
not a repetition of bufsiz (which is at the end).

This page has the, what I consider correct synposis:

https://pubs.opengroup.org/onlinepubs/9699919799/functions/readlink.html

ssize_t readlink(const char *restrict path, char *restrict buf,
       size_t bufsize);

Again, I'm only commenting on the number of parameters, not the
variadic length expression on parameter two (three in the original).

Thanks,
Dirk

