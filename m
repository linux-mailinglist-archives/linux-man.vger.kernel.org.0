Return-Path: <linux-man+bounces-4210-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B85C178B5
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 01:30:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79D06421E68
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 00:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CCF128E579;
	Wed, 29 Oct 2025 00:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CfVu6MEu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838DD28C006
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 00:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761697819; cv=none; b=E6WtYv5vOu9wq/SV6YEs1YtWxKGMJiK33gJTEVJeFKvmyBdb38nmkh8Oqly74mPBimtJzbozTRfhKGnLWX72zocn21ck2Kj+RfgXw5Y7yo8eZzwNQ8fOxGSeNXyWfQw9d1Slr8WNgZaHTOW0irRPFQegSCp1FwxuHjVzVBFfYNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761697819; c=relaxed/simple;
	bh=dExIVCKOuPZUpaJrePlFZ53W1Kufcp8Kjp2sPJNHJNo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=kbO3b3ChOyIZPZHIiMrR/jF4HM7SgxHosLtQdkg3fBKty8wdEDmLPmsO8ANdaOJ30ROrIB2D9WWsq77Mfcev9hsJHGGx9/XQtjITkXdCW3GUunsQFscEstiM+PezYURO/ZimDtxo00sUQLFmRKo1RSH2QEgsE4Bv3JFCf/G4/Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CfVu6MEu; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-27eec33b737so94907235ad.1
        for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 17:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761697818; x=1762302618; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o60Rl3W84Ge29DSaXH8W/UsUZ22uc+DkdzU9GgVlq40=;
        b=CfVu6MEu1cSldTU2lkZvM4oReh7pqaBK7NGGEHfiejFK9e1SCfdwTt0q5rY1dJDMP7
         AcuP9ch9ELE8mKnW6ZcTHzQi6Wej7pbcJOcVLwZjc2PDkmlpO7m9Wk7QAMYh++rCsBR6
         itslPTdoo7RDdOnTtl54mTC9D/YuKuIYH9/K/p94ZbIJYykFWCI9jVaRkwkEcFHDJ2gM
         /tdKkobnjsWoByBzaJtE27U88Yu2qOv6WXT2Vyvt5OqPUAgDrk1xx05GCkOYbYAbxPQh
         pzQuxJpTbj92cMIxCtTp48FCR+TJ2vN0khEJyEGc/HR0fEiNLImOARzWz3nCvGSMJQ/u
         eByw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761697818; x=1762302618;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o60Rl3W84Ge29DSaXH8W/UsUZ22uc+DkdzU9GgVlq40=;
        b=O5F11QuCQirb+2WtTSFboa0XbPb4jkq30kHtiU3eQT9Us1UKPfe02j4tggC57NL48M
         wqdKFX8BwipwrYmmhOIkjUExO9quGQAqAQlJl8m9vR1jqX7EuEU4wfqs2ylDzF8cvyhN
         KkJqZjkoiWXiVYLplY9oGlPHns6p3b8FKg+qhS4qVsuvUORU9u5QeFmuGjY5lBPDUq4m
         zm0J5HRm6FzL83taFDrkPNcDLbLFo/LR9hzG0EADtdW2Wsxl4cXldThUIrfjh+ewM4oh
         sAlTeYwojemtWuR0+fqpb8x74elWJGCG6Id9T6jEdvBA5tff4kysYfvpJnbpTvDBZRbk
         vg3A==
X-Forwarded-Encrypted: i=1; AJvYcCWYD2W2isAF44y2+7qm+ZmCgZBO0VbF/6fFvH3KyylfLfYRPJMIO/AFo66wNcHX32NcUQIUUU9yQOY=@vger.kernel.org
X-Gm-Message-State: AOJu0YwA4uEgdoKBCJKJh01h0VAkWwTMjcbtudfpSeOIDMAt/PdIcRFC
	aR/eDP2fuUppYmBrqEO6qHl+PcSiNPi4QTptLosZgf9fBU/7wKYrcgV+veSes9Le
X-Gm-Gg: ASbGncvEFPPPiVPLUwrrWmmgt+rQ346E/z+YCgLe5GB6Wtcf9HtDS7yhqzZlUlgyFBV
	d3RzIH6ewG5n57ILd4A4mc5ytVWgt5f1AMolf6fEB11t796iEl+ZeHBB9iJjOzf4geBa8vQuLhO
	EHruQxF9TcrASQUZcDtmXcroe9Gr0hraT/06EPqUl8NDznwSv89O08U5xRMOzB11NgiF8kE5uoF
	Yg0bgMPaHcKhJ8NWHhkDCoOqWbi3A3Bc60YEkq8z3+IJrR3BVNHvzstKNSQy8jxzFtrN+UnECth
	o9xV6itDag6lldvYEyyiFTJRSX6BDvd7N5rKaY/MDg1WbqcYYS7WvZURZMHq8OnXoQ0BSeYWSKD
	ECygSD9nndPsH2UlWNbb+RQsgHsBdMbYmCjXc6MqV2nBA3FTocO6mtYn3KQ==
X-Google-Smtp-Source: AGHT+IEz3tu5AtJHKHYk3zJtWPzt08n5It8nZPn8gBcD2hsShnG1PAXoIO+XrqveNW/bgufsRuIC0w==
X-Received: by 2002:a17:903:2309:b0:290:a70e:6261 with SMTP id d9443c01a7336-294dedfa9d9mr13546415ad.11.1761697817490;
        Tue, 28 Oct 2025 17:30:17 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::43bc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf4a40sm132607495ad.0.2025.10.28.17.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 17:30:16 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jakub Wilk <jwilk@jwilk.net>,  linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/opendir.3: document that long file names
 result in ENAMETOOLONG
In-Reply-To: <um3c7pddogzafccx5wtr5pzpyle7ve5xbcl4wrx4sk3yzkrere@euo5ol6ekmqr>
References: <4266061219d7406c0aa737f8d52108fea7e0f7fb.1760689006.git.collin.funk1@gmail.com>
	<20251017084553.d2dgnaicr6loseev@jwilk.net>
	<um3c7pddogzafccx5wtr5pzpyle7ve5xbcl4wrx4sk3yzkrere@euo5ol6ekmqr>
Date: Tue, 28 Oct 2025 17:29:58 -0700
Message-ID: <87ms5a5z3t.fsf@gmail.com>
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
Content-Transfer-Encoding: quoted-printable

Alejandro Colomar <alx@kernel.org> writes:

> Hi Collin, Jakub,
>
> On Fri, Oct 17, 2025 at 10:45:53AM +0200, Jakub Wilk wrote:
>> * Collin Funk <collin.funk1@gmail.com>, 2025-10-17 01:18:
>> >    $ mkdir -p `python3 -c 'print("./" + "a/" * 32768)'`
>> >    $ ./a.out `python3 -c 'print("./" + "a/" * 32768)'`
>> >    File name too long
>
> Thanks!  I've applied the patch.
>
>>=20
>> Simpler reproducer:
>>=20
>> $ ./a.out $(printf '%0999d')
>> File name too long
>
> And also thanks!  I've amended the commit message to use the simpler
> reproducer.

Thanks! That is fine. My example was a longer than needed since I was
testing long path handling in Coreutils and wanted deep directory
entries.

Collin


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmkBYAYACgkQjOZJGuMN
fXU2hw//TMHtJrC9aXaPW9GolBknjzKwR8fArq2Ug1v/K28H48kxWL+N772sz4TD
bb3a1W+DnE4/xny8DCgUKoSp1L30piKiQfweIXIl1litFFsQbMGhLnZkdnyKjcV4
I4Zqgg1/5i+UuHJuWL0uKq9Dxpckqu9cGXavxw8hCBNBmc6QVMMJUK/3ZEbUZQqH
vHUIlNNY+FCn4PljZZtK4Fudo2KOLTbHlsu7vpGe2cniHfo12VMMT9X6EYcwGip9
aLnkvS9L3WDc4T3HSv8R/n1Pu/3rRn2aopaFFNJhV2trw20Sq+bwYBqoxxjr4O0Q
oX4DYmAqm3Zo6+RUOKqcdwvSXCQPCWuHVWbwuOkPqTC7h5gKO30T6JX6A8RB4ZFl
Kisss428iu/pzoUZbbuMy5i93no25zaumIe7PbpLrwXjPyYCfqqIuFv3giPB86me
fTVw6hX/J4UTe7aUmaYZ3TCNMRGn5CmDEzuddCVOqYsxfXW3y1YJJe/UGdRjloxc
nFiiGvmf51NY+ioti9pX9ppU40OYx5rQ7JMG9PTS2heVjxtuTYPfZewYk2gdy52X
gQH+3ZpHsbujRWox6H/BZLTo9E3jxYr/owEnq3qZhgDJLXo8mIJRKoKFe1T5PsJX
fGvVP7dk7OxH6fEDw0EB+/dFrNWtwmMfZjspikVVKG1E4pOF3sM=
=xYzp
-----END PGP SIGNATURE-----
--=-=-=--

