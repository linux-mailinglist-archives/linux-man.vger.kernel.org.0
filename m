Return-Path: <linux-man+bounces-4465-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 35478CD4810
	for <lists+linux-man@lfdr.de>; Mon, 22 Dec 2025 01:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0355530057E5
	for <lists+linux-man@lfdr.de>; Mon, 22 Dec 2025 00:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7299322068A;
	Mon, 22 Dec 2025 00:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lrQztax9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E714B1F5821
	for <linux-man@vger.kernel.org>; Mon, 22 Dec 2025 00:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766365093; cv=none; b=jWy8dp71uJ4iCQ0ZRhN+E1AXGWzLXnuc0QKeVfzEb3RTUOSKUL+5CLpDuVrJ7njTh+4ic5pVtBQ42UJSEm9fI9m2LizPwnutXwlPmVUXuXW7SmduVXekxfMq6poLFmhe0s+XcUAThlT+q/LuHmqNbsnx0hOfWqbZvn1vvLoNUuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766365093; c=relaxed/simple;
	bh=MyLPGVeIV4L8YYHUwxrIGyvQjw+vft+/TKOAiz30UtU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=QkQ9/Fn8df/3+A6ibRMz06pAZGCzo9byKY3mj1Ub9fsLtxEEuk79eVd9u4G8iRbtym/EKsA6QtJEFfZuNVrDKOmnqIRnawh+iRjBj9VakHdN58Jxrbxzosb7eMH2equ9a9XNepYKnyBAbQ717q/WfO29UH+KfPyFNtRsfmZYOFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lrQztax9; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-29efd139227so46033725ad.1
        for <linux-man@vger.kernel.org>; Sun, 21 Dec 2025 16:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766365091; x=1766969891; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MyLPGVeIV4L8YYHUwxrIGyvQjw+vft+/TKOAiz30UtU=;
        b=lrQztax9CSTrb30WjTylKXVjplXVzpEO6p8og7nqsUxdtFM5SZXzkWSnbNeVA+I4aA
         CIdsqUIzARj0prLnMBCUW+sUmPgUUL+eb8ufKGV1AsTTjsD6abplI2wDbaG/siyzoNEj
         0s5U7WRqvLJrj4uN8ODiamFeETSKywx/U3MtOf6uS8ixEIJRytewqxVrxXAS3H7F+8JU
         9k6+GNEq/kOLOM85+e/rvx+CjNgMVhhI9EWcK7/Skz/6Q1JED/QSsva6QYnPaLKfguAT
         tmjSzfXowLOlfYab27QjrFKturxquXxtIfPVRe2uQw7HJ9YlJMEZ4sTqAh0gFGEbfxvF
         nxsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766365091; x=1766969891;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MyLPGVeIV4L8YYHUwxrIGyvQjw+vft+/TKOAiz30UtU=;
        b=QGzA3doXpeaSd7DV2ZTDYSMktV5wKIN9kuaIk+XeCyZ11D+Pa2IRjWEJflu56KbTau
         uv2vjPMgMfzspIECfBd5yzT/e5qlzvsJpWBqGHM8A8Pl5i6LaRhkRUpFX7Ueyc2tX4Tg
         dhMdYthhEf82EgiFfDKyjkfbRCVINrLU+T6oCSItXuXZ2+hsNKszC9J3xNsLFIecvNpm
         wqKvXPg+2gUrnCHqjc7JJc01CnQD2hWwQjU3qVnNI0VFi9wHKncZrUxOmLxoqc7qmYJd
         pSvRBYlC9IMRrD86TRbuTtIgCtbUxeNmIzGTeLEIosspoX4vsAQWrNJmKKUMxxvWkOJi
         i5kA==
X-Forwarded-Encrypted: i=1; AJvYcCV0G8/AHqhPlHrToGUfvRrlC+Z81gZXhY3oWJhVKxdSQFornyVjRVkqGySCCEkVUb9W5uiuf4aO0hE=@vger.kernel.org
X-Gm-Message-State: AOJu0YzcdlhO7n8jboNX0kuHCCzYDx/6UoZ+NJgEhIrtcU/Ejd0fvlst
	96lSB6JPf44hQdAQromowJHZzdy8LACOFrBBASnlmObUqpaoCowYFLfxzvTL1g==
X-Gm-Gg: AY/fxX7alCODAeUzyIFzHcm2LZVI+tjEe38Csn+BuDE0+c9oss4IyGFpkSXpf2VTo81
	ey/0t0VavNz9Md/EvSrov6dt1UK+ZJNuEa6FLorjvAxk4rwW5ewYHM2hHiPv9q6QCWACcLCbXG2
	uiXS0lbEIK6s9gzfQ+foBQYDYm3f7DXjXmrQvbdRM/F+5hh3CmCcqspqjLZ3vJNKLIm49BdViJT
	ZK8hGM/rEexS9euxOA871By6e2Vk+gRo+hXHN7qcpI6hen8v0z3MkVWqgeCyDjmE7H08uqoKRQp
	EsECxg+hxLh0sY1m934CUrz96Ykh8lK/y/gMqQXKwiBENzs66TbFlqUzjcvTzJa8EQTLPAGL6yw
	YrKe2f69aRJlLwYocCL2aX6cpriCGSmF+1DQJ+8D7P2HLEGnCOqD+46dGACXuUTemj51z
X-Google-Smtp-Source: AGHT+IGUSW2Yqeppyi8fRjvX1c1x5QJZ6nvotRmP4GMQ1PJQYnnKb4AuZtsEXUzVWB/yJmcj9OxvQw==
X-Received: by 2002:a05:7022:6199:b0:11f:1e59:4c2d with SMTP id a92af1059eb24-121721acb6dmr9356932c88.7.1766365090974;
        Sun, 21 Dec 2025 16:58:10 -0800 (PST)
Received: from fedora ([2601:646:8081:3770::fde9])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217253bfe2sm28767466c88.10.2025.12.21.16.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 16:58:10 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,  "linux-man@vger.kernel.org"
 <linux-man@vger.kernel.org>
Subject: Re: Early POSIX versions seldom included in history sections
In-Reply-To: <aUfsE7Yt45BVO56T@devuan>
References: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me>
	<aUbf39o2ce0WhJoA@devuan>
	<nBJHItg3tSnUmbXVk7-VufAS9V8JckVOUAzwYGrGW59ireGiPGb3ppy40QL3bgZhJbheep4RVQ8owzThk4LFmFWV5kohm8s6FbGoqAxchp4=@pm.me>
	<aUfsE7Yt45BVO56T@devuan>
Date: Sun, 21 Dec 2025 16:58:06 -0800
Message-ID: <87bjjrbae9.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Hi Seth and Alex,

Alejandro Colomar <alx@kernel.org> writes:

>> Suppose instead a function was first introduced in SUSv2, included in
>> POSIX.1-2001 as an XSI extension, then in POSIX.1-2008 it was moved to
>> Base. Should its history section include POSIX.1-2001 or POSIX.1-2008 as
>> its first POSIX appearance (since XSI is SUS)?
>
> I think you could do this:
>
> SUSv2.
> POSIX.1-2001 (XSI).
> POSIX.1-2008.

Just want to mention that I find all of these document names confusing.
Maybe because some of them predate me, or predate me using a computer, I
do not know.

Therefore, I thought I should mention the names are described in
standards(7) along with the full documents they correspond to. I would
stick to the names listed there for consistency. That is what I have
done when making changes to the glibc and gnulib manuals.

Collin


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmlIl54ACgkQjOZJGuMN
fXWNlBAAqDWvN/4iVfiDQsWxSGWD3zItGVEpY2iC9c+Ats5QLMtyRiaO8kTAdfYN
k4HZX0OquKV305zB/elbz89p7gRYa4KYNwZHeXSBX4oCj20xaK1tFcSrLPLT/7eF
DmN/+sGsnVHvrqkEZ2ZZQrfm23zUvpewugu7xlkuAZ78navNSxYMfj6FdAjusVEJ
9XvShpcVBVqNK8/YE/QxsDwy7niQvUJgi17liYrAbv182EQKwMeHpb8xONEmPAmH
+bFgJ5fZxT7Z6sv9z3eZ6bj9VK22Bv2UMs4KjnRJr8ZhpZErd2ub3yO/SN9rpq5Y
e+hioW9t3I1fn/BIMYkIiw3YGEVZTuEzRvpXJl4FF95WS5e9HwTSuu6+QPhMwA7v
BhhiIeWPebF+TnJe2dPhEJ6bTolpCCN+RLrQMc9a+kWTSefe14FidquMUIrXMsq+
JTAQhRyFg/XKZfELN0T+6x8D5LHdgE1sv7hSYRWJziA37jiUgFEruwmVwedQhEtp
JrfwAuV+OgeG10tBHW3d15i5grJ/Y/6Ue7hnmMoj+TNbnxXjqAUwkbjgTuLuCnqV
DsoQOI5sIEKMLKkAX9GE3Hjpwq5WgppBvjujvPJv1JCWJ3kMg85a++9F8RsXX25b
1YfsDzvJmeDl2QxCJnTdXP7dyDbJatFh11ohGFNncKPzTXwugo0=
=Fe9I
-----END PGP SIGNATURE-----
--=-=-=--

