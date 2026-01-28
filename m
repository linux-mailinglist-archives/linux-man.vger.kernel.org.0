Return-Path: <linux-man+bounces-4988-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFy1ArgkemkO3QEAu9opvQ
	(envelope-from <linux-man+bounces-4988-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 16:01:12 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EF9A36B1
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 16:01:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5892230A6081
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:52:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7232628CF77;
	Wed, 28 Jan 2026 14:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="brF/il5/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F6A33ADBD
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769611922; cv=pass; b=csFX7gjLsCbu1b0j9ESdg7v8wi3acZzeScFbEjZVbpMIzqafauepIfvfTdH/rdDsnbTNWwdXDFHHblTsU7NXZ7SC/NL4zVHL3NVI2PfNc8q8L6oOUfjQa+JcPBMNGV2T/sEy1vzy5wQhnVQz+wr2AQHrClgZbIAMFLUIZbI0bfM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769611922; c=relaxed/simple;
	bh=oDV4CARBjowfsef0Yf1s/BXVEwZqMGCJ7ml12z+TcCI=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=qn6nju/XPjRpv8MWAd8dgnxiGSrB3HxxKGE06ImRTr031/Zb3yT9S6+zG6L9rGUPC0Dvdoz9urqJEyR+Q6eq6EkB+Hg23w15n4YAi8UK7izjkwY4yCzNFwHKl2Q/84H8Wld8X95Y2RXMRsS1CyG1fMarg3c/BP5Y5U/if2J2ZWk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=brF/il5/; arc=pass smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65808d08423so10424710a12.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:52:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769611919; cv=none;
        d=google.com; s=arc-20240605;
        b=CL0NHgQRpLFxoNs7RMwKioCVb3Tga+OMfYe+4pQ5F3NIN/QGqItDqB2B0sOH+xoHar
         DISAs8rdDm1omCsMYrVXzwTJI21d1z/cRoGoDAPhhFfzpEczlfV5OM/C/nCJYB0OdfMb
         wdlEMGljFkwKnpgktzxHv1fLOnYhc76HuZ652JnrUUYnCGc03OmO0kFxg24vkwgs2R0U
         FgfOAinslyCxVI+gyKY9iEo67p3nfwHZfMCioWhSNl/bdnVjkH0E9lRnqj9uGakDB7Hq
         xy3DNujk4wH7OYD7HygQeX9MWfvv74mcnCt7nJlOPd8lxDyy2acmMW6eSxQgLWBDXq+o
         9zOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=2qJvYf8o/QA+FqDCM1u7titKLRz7zdSKHfDbFSF4W48=;
        fh=c1whHUeJnQA9k8nvkHAvGRExA8LyZLAxHiuV1QNxZ3Q=;
        b=FbU/yuHU0xuzyGlCXcPb4sBTMb9wdU8BxX9HHn8crjXXrXMgSg7cjHUR2Nw/+ng/Aw
         0zb4TpLGZSRWcvbKpzu+R/kZgRnppujGbyfY79hBcuIPBCe5ZepauJwZNpesELv0Vx8A
         4ezcPULVj7tYuFHpPBeSENlS3M8wxzI9izfWnzrpeEFCoaTM3SBCP4Cm/nXYEZAzNtEF
         8DhbV7YP56e0XUzMjJcPnowpB4jYcHWyqNEx+Muo4afXQ+tOq0DQgwcVbATg4lAWFce0
         Z5b8nhL375UDF35RblPMl7aGP51FyrO2SqOtw+7gqoQ1u6wMQ3LLVEY0QGfGgaFvexiA
         Ia4w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769611919; x=1770216719; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2qJvYf8o/QA+FqDCM1u7titKLRz7zdSKHfDbFSF4W48=;
        b=brF/il5/EomPAGK0ClDVPOSfEAe73T5FSxSSHRkiZjlVQ3U1qbJYGOMJEnzHNuDjCR
         5HzbEBPfIRI8wLA927DcuNcYN84vVTXSlOIi5IosrUAuehHIVk0NMTZkjP2K/0RRSoMc
         tWKGuOFZypaxk0kQAHHV4G/tRT+5PikfADZWOcmwjx5GZtm+lcQT7CZt8mtsnxFsEMYZ
         DzJDYLIfqDabRpwIhz80kSl0jI80SqGHDEDn11JCBLVGbNqyKUZBVGFgGh0NvNe4ihDg
         SRlx7giZYOpHxh88Kp7IH/AQ6t12K2bkyaLTLaBxxYhcCF7yZIXKgJp3mU+5UY64VNUU
         LsfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769611919; x=1770216719;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2qJvYf8o/QA+FqDCM1u7titKLRz7zdSKHfDbFSF4W48=;
        b=dGSljL6cPFjuZ2G/6IzZaNTCNK+6o6PBeHw7QIsnhAwhzZPnwqOwSFaQ/0Y0X0LE44
         oyOvFvxz4EXgb751fSNwmk8W19w5pLaXJfTGDei4+AA/Su1e9jjvUkjSzViz61DQkUFO
         vJJ3H1POFEyCtWRmyG04Kiw1LKB+f7zs5JTAxYi+WNhRcXD7H3vcGWOka+eVDqUtRncm
         2s2WLutUeDEOZkC+ZkkFL7kRdlwXm4C1luao1oaGWehwv0a5yRlnH9/2pQY4rpARsbrU
         WRggJ+U4vRJC0yVxCs2gCEVBU4izax1FEV4dvROTc2kWG/RP66qAgZqWB8IHW6Srfgk7
         ZI1w==
X-Forwarded-Encrypted: i=1; AJvYcCXpjcMY6XMrYByT8AnJl4cp32KEUhOGDEOwqn7Y0ucijhn6TPw2to49n0S/4jUsXYVmLf5xgDxOK6M=@vger.kernel.org
X-Gm-Message-State: AOJu0YzRN+V/MoieIMN9YQMxKnvK7Yb5T9YC/ixOgz1sFxYcs++bQDai
	MqDNvnIXlwdJGp13EJbGw5AkcSSQP7TMM8GRU+gn+sEodG+ujkDNsWMPW8PTIEbDbtQAs6Jlv5n
	WKflpMeVnD6euYC8TDpQn4AckWqex4gq2IDxg
X-Gm-Gg: AZuq6aIo19IrJWM6PRCIB2g7OGnzxH0+Aovb48xbDIb9/5aHBIwFUYcl6uYgwdWyXGQ
	mr0vXKXg6jcqHAMNT6lVrjRN14N1HrlHBH0btdsfIf9IZVNP6HtgAAmknnNCqzepsNowlqjPOsm
	RqakkdvelOrcMavDYiO9adKIKdDNXZ34LyvlCNDEncbo4U+4L8geM/mRTuObYxPTlql47ikYJRB
	uu7ABxaZ3x6213SjxFig7KwWqabIsk3E/IqpMAz6UAAqUDa0Fd5aITk7aLJqOlPEHbQGEj+Z1kr
	LwgoOrdv69wKlgcTaFuGVwNO7vjtYoFHsgsrCiZ4pu9g5BJJ4HGtZj9NQnYUjx0JEqIv
X-Received: by 2002:a05:6402:50cb:b0:64b:5f4e:9e6d with SMTP id
 4fb4d7f45d1cf-658a6084067mr3681035a12.18.1769611918651; Wed, 28 Jan 2026
 06:51:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Morten Welinder <mwelinder@gmail.com>
Date: Wed, 28 Jan 2026 09:51:47 -0500
X-Gm-Features: AZwV_QgExq91Wu_5mQZNjULdJNDONrfCZQ6m9vMQWP0mBWE_emq0I_V9vY6z8Vg
Message-ID: <CANv4PNkbi35JzgKump4zdNSUEwSjCpS7pQLZ8LTm+kKZ_4vtyw@mail.gmail.com>
Subject: floor/ceil man pages
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RSPAMD_URIBL_FAIL(0.00)[cppreference.com:query timed out];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN_FAIL(0.00)[114.105.105.172.asn.rspamd.com:query timed out];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mwelinder@gmail.com,linux-man@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-4988-lists,linux-man=lfdr.de];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 98EF9A36B1
X-Rspamd-Action: no action

I see two minor problems:

"If x is integral, +0, -0, NaN, or infinite, x itself is returned." --
this seems to suggest that NaN is passed through unchanged, i.e., the
type and sign of the NaN is unchanged.  Other references I can find
suggest that the NaN details are not guaranted.  See
https://en.cppreference.com/w/c/numeric/math/floor.html, for example.

"ceil(-0.5) is 0.0".  I can't find a reference, but (1) this looks
weird, and (2) it looks like libc actually returns -0.0 which makes
more sense.  As noted above, ceil(-0.0) is required to be -0.0 if if
ceil(-0.5) were to return +0.0 it would make ceil a non-monotonic
function.

M.

