Return-Path: <linux-man+bounces-3902-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B831B8D031
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 22:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1BDA567E2A
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 20:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53372268C40;
	Sat, 20 Sep 2025 20:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gtkk9HqL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77FA3597A
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 20:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758398756; cv=none; b=PpVJuaENZ4SoPX+8DpfbWy3Aj0vLILnneTWhmaDDjt0p3fNvKsFty7qDI+bE5JxCOG2ykIyNg2JsCfIc4QveGxfG801eU85/enYivRmF+SBZISv/+b1imtGahZ/YxyeFdtQPgjsloal80wJxnrfkSe+SYriueiWg2GZBb2OjQoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758398756; c=relaxed/simple;
	bh=NGvDjKhts0/iwo5A6unUfzT8BwfVJFiWyUMApmDwPbw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=MAO3gXAFtTf/NBCTXBOzrc2RZpq9FA+nXncWh8H7HesB+gYdbh79BiU3xMS+8KzDvu97fCtpntuu1aDhGjQL6cKlW0EWPI2wUcEpcHTq7z4/MlarpiptZCx7hPpJvUM12ikrTgESKwWQF7obVOInii8RUQ1dD7Tp2WUMwkR7eRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Gtkk9HqL; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-77f0efd84abso1066898b3a.3
        for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 13:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758398754; x=1759003554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vdg+lUPhm5Mke2UpsRhccMFOltHdC50t8C3kTuDRDX0=;
        b=Gtkk9HqLE1VJ+Dhji+ehptTiDGuqWJWtx0VtCJCk1Y3ypB8BqqTOh30d0Q4NsMzkjm
         G/CCjY3DeMZ6HhiAfBz1kip+outSbl5Tqit9i3sKCK862EAhfbiIXZpoN2mN1EjreD58
         bdtasN/pNFx6/Kz3WbK3MMTAoKGq0hA9WZ8Fv67QW6EpoiLzVnRAFMOTJwlVrgMVckdr
         IdgXIfQxprFg6caAoW4+uNEE0xEnKYwv6x9ePfazZdtruEICLyTYtBEbaCzL8gv7+dhl
         xDVKAjz0iJBikW0mIy6syu/147g5nYZ96ny4h5EZK7rQ1ZohCPjIasnyXovK89CF5RWc
         +qWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758398754; x=1759003554;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Vdg+lUPhm5Mke2UpsRhccMFOltHdC50t8C3kTuDRDX0=;
        b=nbEz2jaZXwAUF3YKf1xsWg2BLwuZogmpVkRJV/XOrgJfEgz/Z0yO/XI10Ai8E40zR8
         4ctHLvqafucI3xnfmczBXfcLPRYMtP7SmHu9M5siSM77lYuRsH3IhDkh0u5/XAqB2uYT
         hsJV91t4hNG+TLnxR57CXGkn6K0HVCCZ5sTBgwl0zEn5YokcdbsnHaCVMETRGwiH/EfO
         X/6vTFgTerlTAYJTpoOkmIIA+RMiD0hbcxQqNZOpLHUMGk2TEJBTOS5Ch1s2zdkjLdYK
         +0/JAN5QidWxPSDxvaiyg4QGyiILgGh7EuBcFgzNlvhcDbtwPfCvieYWXVLVfeEeD9xH
         cc3A==
X-Forwarded-Encrypted: i=1; AJvYcCUfHmMT6NpLoWeAKiXi2Nx4Va/MkHxqpR8A3jGJgEbdD48Omo/9RQp6bYbfFjuu9mzMzBsZCEs8FLY=@vger.kernel.org
X-Gm-Message-State: AOJu0YycE6I44kHHSKWWpwVGMHD+O7T3Vs3wdcH1cY4QQSgzGLrXLbcN
	bwrQXOFukvdYbVctL69pmBjhRSGiviheISFteraytXvRMHFF09i9poQUzfp96w==
X-Gm-Gg: ASbGnctUcnceikdmScuRlIZ6PRWUIQVeoFOQW/CCbSOKb8fxpMgrl6dT9C9EDO3K3bL
	/WDGOHeNK5osscq+KVbwoNqn1uBjSO0YAK6WYdp72NF/C3XPOKY0oyCTVJLeloz19LCgOaYHf4R
	ulWziUIufo3NIIsEfS+dWkeEk7dS9u33tCPRTuwZqt2VznaEtn4JxaWusCeo4LW865UdnY8dWri
	vAXygr1fC7w9yczRqU1WzK/kTlN5r5kxoEAZslHK1n4QEcW0G95FJh9QzOHN35YtRgPv4ycx3v/
	ny/uCfPWjS8F8r/ZbDQT7QGOb2cyo/r7lzLpzNJqEGKsBLd6IfoXYBfXCW1EgyJbNCXsH9qna+X
	s1AWM
X-Google-Smtp-Source: AGHT+IFX51wM27y9KHkc4cPlttjkiTyQg5mGjRMFHyq90pcDnKmBsEwzVBtyEADxxce2vrXlMBjpjA==
X-Received: by 2002:a05:6a00:3e23:b0:776:153d:1d74 with SMTP id d2e1a72fcca58-77e4a104ca4mr8915490b3a.0.1758398753676;
        Sat, 20 Sep 2025 13:05:53 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::641b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77e0bb98790sm6308154b3a.9.2025.09.20.13.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 13:05:53 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>,  coreutils@gnu.org,
  linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <jcxx3nfilug5tfk7ktgr4n4sw3nsvympz7tslsblqlqxbm6ou3@hu34rdpdtajr>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
	<e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
	<53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
	<4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
	<jcxx3nfilug5tfk7ktgr4n4sw3nsvympz7tslsblqlqxbm6ou3@hu34rdpdtajr>
Date: Sat, 20 Sep 2025 13:05:52 -0700
Message-ID: <87o6r4zy73.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Alejandro Colomar <alx@kernel.org> writes:

> Hi P=C3=A1draig,
>
> On Sat, Sep 20, 2025 at 06:01:21PM +0100, P=C3=A1draig Brady wrote:
>> > > All of the man pages have links to the info docs for full documentat=
ion.
>> >=20
>> > I know.  However, many users don't enjoy the info docs.
>>=20
>> I my experience user don't enjoy the info _reader_, while the docs are f=
ine.
>> The full docs are on the web though and also linked from each man page.
>
> Yeah, the info online docs are much nicer.  However, I (and others)
> don't enjoy going online for documentation, when offline documentation
> is available.

I wish distributions installed the HTML docs to
/usr/share/doc/coreutils, or somewhere similar (and substitute package
name for other packages). The gnu.org site is down or takes ages to load
frequently nowadays.

That said, I have seen complaints about the Coreutils man pages being
"incomplete". However, it is grown on me personally. I use the man pages
as a quick reference when I want to find an option or understand what it
does. And the info page for examples and/or commentary that is too long
to reasonably fit in --help.

Writing all of that in groff would be a pain. More of my time would be
spent understanding the syntax than it would be focusing on the content.
Texinfo's syntax is much more readable and easy to remember. And the
HTML and PDF output look nice to read.

I guess Markdown or reStructuredText would be more friendly to new
contributors since many do not know Texinfo. However, I haven't seen
good PDFs generated by them (though I concede that I very well could be
unaware of examples).

Collin

