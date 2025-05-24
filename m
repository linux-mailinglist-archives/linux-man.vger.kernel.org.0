Return-Path: <linux-man+bounces-3010-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47329AC30E5
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 20:09:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F9729E1E99
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 18:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129AC1C1AB4;
	Sat, 24 May 2025 18:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KA4Vm2RV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C2A19995E
	for <linux-man@vger.kernel.org>; Sat, 24 May 2025 18:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748110140; cv=none; b=MAEl+1svtEGsWGpxaNm4L34hEonaE7Nz0rHLHTQoYkh2dI00WNBJZIEZYoosa8Xm0QPwIV9bnng7gsPNUihffXXObHuzQlHrYIrcKAQtc4ijeXxjXoauilRhqwPUItIcTiTBJg+bZqFMMENsjBT80gX4YFjBODISP95MmBSY1N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748110140; c=relaxed/simple;
	bh=Dt7X3jdbWQQkie0MbULPJFQPagt4EKRYz/JfYhOJbeI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=CI+Un0h0FT6zP6lLyxxZSiJdRWOciwldmEiwCQF9OAoK5DEDniV0g6EaMu+9+TT+owv9+/h8386dVpN1HV+llETZuOBSubWuxJKLbpNKImjIZczK9/QTvZ7fjc6zdYz7/CwkLie+yGkMYJZE6LG6Vhug4mM7p0MNmkBIlD4Spug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KA4Vm2RV; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-22e331215dbso13576985ad.1
        for <linux-man@vger.kernel.org>; Sat, 24 May 2025 11:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748110138; x=1748714938; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Nd/Ih89BKohfqvHCMpoPHpM8M5Ssx+DQjB5TMewP1Uw=;
        b=KA4Vm2RVeTg6AxPvB1zaIJlD8PigCV0/5heW5+ZRYkZb+vjgr2MIJX7zM76K3L9lw0
         gAu5ZENLE83P1AIaVzNBBTTwsa2XYD92NI1YXQKGQ+cSfvEEyCp0uh2Fg/lefxG2Aetf
         +TMSq+pbkIXP7mXRIcvPp3Tq3gmbGE036QnDUzwQv//Kxu33Yyp6mRGbqpV4fIhRciSb
         0VIpqSG0Te5l/DfdkT0y83oHTrWMHPWHnFpONjOCfaoBrnTcy80tS3yh+WH/5rDX1xw2
         yjPRTZCg0BO3bmgJoNrO0ApoS/FahoQH6ntVOhTIz32tszBj4cBUmX2WHp66Gwd6LvHv
         tqtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748110138; x=1748714938;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nd/Ih89BKohfqvHCMpoPHpM8M5Ssx+DQjB5TMewP1Uw=;
        b=UqajKCOWbvNlPbjNS730dr9pYp2irjZ9DuI59sfSLUKrRPyawHfZKI8E1q88rDVw6H
         nUhEKlvsaIVwZgIuvTAaRg4o6889LBjMnWoHeZ6ddP+rvVRU9JezNuu5ZjGLMBKH2SFz
         gHw+x5lnSe7oykjBaO3h/7k/nFovlNqqEofLWhAncw7cFMWgAHll5skwm3l8WKPPO3tB
         GUWSfrKq+FahjNdf1h/zoLVd+qQemXCGNP/9eSlMXbGOohAi3MA32vV21q1icxtEGEMW
         c/59bOkIKQg7pYT+vj80Muazduml6gASYveXWm0ieS9CSYo8zvxDl0gVi3WmmetcpXxF
         5WHQ==
X-Gm-Message-State: AOJu0YwpDEocCXKGeUmgvGcPUvFW3UcQbmEKa7a6gAfNCHSknuNYqi8o
	2/GC3dItV6cs9bB2ysTY4M9v8XFwRbYZv5o3Qv5uBcgdjXQWLNXu4Z9fbFm/yg==
X-Gm-Gg: ASbGncvCcL+vYYquNWt2BkdZ3TzzbLV/rXy/lNnC7E3Fj/Q42vvMqshY1oR4tbWrv9t
	kUfpvZY1fTC/vADLKuO7QWaf2lhW4NALdJPPnHFmmDzQBe1Ff7AygZnH5xDmTPeV85jRQK6RZ8T
	SNhdH5lvFNJSsXD3IovSi/h2KIO3Q5wiws4Np7DB013NMe/pVGVashx+zAkL2b5zCaIUynZPV2k
	jPs0xYZHtCFi4jSTce7L+ElyiWMrx0fwIqGoxE9gn3pZpQX4PjatwOO3ZSF/HSyuf7RcYKfmJ2o
	pSiClMrRcHN+EI62nDulsjau1FJ9Xb4m
X-Google-Smtp-Source: AGHT+IGZMnY5zQ9xaVt1U0ieHLLgTvunZyeEz8zbGsN2lfMhib6DeRt9lNTMaLLwoYMFPR5/mR+9ZQ==
X-Received: by 2002:a17:903:1786:b0:232:609:86c9 with SMTP id d9443c01a7336-233f0669b04mr116054315ad.9.1748110138451;
        Sat, 24 May 2025 11:08:58 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::eef5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-232053579d7sm122993805ad.80.2025.05.24.11.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 11:08:57 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/socket.2: Mention POSIX.1-2024 added
 SOCK_NONBLOCK, SOCK_CLOEXEC, SOCK_CLOFORK.
In-Reply-To: <3ygqvwjlmrtuhw7ngiglmyeogxw3r7s3vmgwcmyotfayjr4mlt@xht2jd43ds67>
References: <fcb9715252e3d7cf296911ba78fcc8840e971224.1747972727.git.collin.funk1@gmail.com>
	<3ygqvwjlmrtuhw7ngiglmyeogxw3r7s3vmgwcmyotfayjr4mlt@xht2jd43ds67>
Date: Sat, 24 May 2025 11:08:56 -0700
Message-ID: <87wma5op8n.fsf@gmail.com>
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

Alejandro Colomar <alx@kernel.org> writes:

> I've applied a similar patch already.  :)
> I've pushed all of the work-in-progress POSIX.1-2024-related patches in
> a branch to avoid collisions.  There you can see my work.  (Be warned
> that I'll rebase that branch every now and then, and eventually remove
> it when I merge it.)

Ah, okay thanks! I wasn't subscribed to the list until recently so I
probably missed the discussion about SOCK_CLOEXEC and *_CLOFORK. Your
changes look good.

And the posix24 branch sounds like a good plan to me.

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmgyCzgACgkQjOZJGuMN
fXU4Ow//Y9WuCu2UBxAiK3fQBOFpcwPBFv+cvkhl/Q+UE0Cu/KDCQsgQQF4rLYqm
njOjvL42FolfE2INUq7LL+ryKwcwCLZrAAD2WxkHZs1Ld8L1U18xXE0p15m8187R
ehKb/+DrgkpYsdqozpBW/N+SKtW1FBgz0BrT0vzzya5280i172zWaFQGwmxhXpmz
BD8/Z4BnJtMHG+0G2ogiihrGK2rAepStvbmH1U/MLssYTvdYCkTmIy8PA5T/afmQ
2cqKT5Q24ndE3Vap7P7XWsotEQU7ZS8rdi1XW69wTu5zvu4EJzKvDnX6B0ABH21v
Bq1TT+AJe24G8Eit2RyctylfstOZzHDHuuIuRIduGoiXCsQAjpxfJ08VqoGkc9QT
W3lbIV3x47owE8kpAKM/CvgZExd145ETYCP8gkUGkzcsEqJNojHjaWNvoH0fc20P
6b3BlsQpJ5s1c3LMmwcqW2UA2dkVce6khODt1XaPHi2VSCv+HTgiWnnj7+x1hwIj
bUdFdPG+MFZ1iKor6QxhR4p3CT/IwC3naH5vaoBfvOOeehfKx9cvSzqA8pLOoNFo
Y8i3aIwwLGeu1ShaoPsronygU23N4s+nLKJUvTUtqO/piVvJ/N60AhCchRKX1AKj
B+/SaMNkwxHj2H4xOXk0jxvJ1o6O3Ms499VLhxQf3pD407Qs4uk=
=cmLF
-----END PGP SIGNATURE-----
--=-=-=--

