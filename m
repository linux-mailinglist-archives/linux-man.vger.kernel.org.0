Return-Path: <linux-man+bounces-2395-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C93A3181E
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 22:46:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55575188554B
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 21:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E421EE7B9;
	Tue, 11 Feb 2025 21:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F1OCH4zz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799C626772A;
	Tue, 11 Feb 2025 21:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739310389; cv=none; b=cOVYEPMCzn7YKsyAxCAYepabgA48R8NBNy3VWNYY34LwmMmEeoGK/27amtigrVPWRZhEOXPaRbeIJ9G6cA0GS02pCj5N23wZU6pU285k6XJuDZ6yeRYThOW/84cU92n2GkA2CTq8BulmHWYlo2Ynxzsu18D/wNRkqGrt+sxc7/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739310389; c=relaxed/simple;
	bh=0G3LHRuqRaIz7vE3wIP+J5BK1h0BK+9fX2bOxvyMgsg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WiJiEZxVjcaPtSieJz02gyYpRyQXlsBIDLovqICKkiE1YIJEd0HKp7R9b5usVlviGqud+Cbbq+N0T17SqEIuFK5Jb8I0erm1B/hlfv6rgc4sWYKNHnN8g6ZCfuPUMIBZsYiWx8XdLXs24uQtVwcE9RO07NsO0RrsmmOZgTi4Z3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F1OCH4zz; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2fa102a6106so1351902a91.0;
        Tue, 11 Feb 2025 13:46:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739310388; x=1739915188; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0G3LHRuqRaIz7vE3wIP+J5BK1h0BK+9fX2bOxvyMgsg=;
        b=F1OCH4zzO2n2x03zii25Qr7AqlEAP7cz+K4AX03XcT4tjKDac+pl5iLZl0+q9h3ADr
         W94ZuiTISyrUP/DLk37ExtpBtU3Jq/+Yeh5+MjCBfk0YBeMxxhobvw0OCXScabh6g4cH
         79M+eWNm2HNzI7yQdIMgu/QJmnUiCeU/N3F65tmtTgXfx7vwARPv5SAkVJMx9SScHotf
         PhVE83kRNkhA2nSJq/f5j2CIxS9vrxVKOSmy6VUGlAB7R0Sa5JTjFbntd7ZVFh1/n80y
         9ofFdvk55wzESuGgcgwVJei4e08EAskoUYMfgmLh6caMl8/eI3Bi+Ipx2NUdsNqF2m3k
         yhAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739310388; x=1739915188;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0G3LHRuqRaIz7vE3wIP+J5BK1h0BK+9fX2bOxvyMgsg=;
        b=YRT26QKcmd7HVnrQkBImhdHgnOsbm1ZvXvirIWxvz5k2c2i6mXGaNpmZfnhonPRdI+
         fLO+sV6fhVVKSpwNdsMyrJq+lpTzDXYl1tdafGEsndfyWiIIO5XzGMhKD7jarL4DMLch
         glThIExRzkcpb/7Zaqj3G0lZcMtdjhAFlEzffcMnP+D2jrJ7xQZNJngi4O1fOq8/Ku0j
         JZ+Z6QHugm7vfTaXbValtqMoW04SLzAVLjE3saOwM6PxLJQQqN9hKpG6VIJ2nLxIz5dq
         V9v+2oNW1FWvOgSZPmXG1TaDQNm+jXXWhgUiX2nuhgGiJXcIbRTJRI2gDGBx9KOcOZvu
         8OpQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5jWIyhfYzBkkIK+mypS+XklaD17+Lpqy5pRypQchvDk2cdcJASWg8Iv+gcXZX+EwUCbVhrg7ZWdUt@vger.kernel.org, AJvYcCVkN82E0yXHWnrDp6za9UBm0eTOzX4J0z3bgN6ANlkpPX32aqctHYMHJt5Jx78+CfepZkzFe8O6DzeYAe26tpY=@vger.kernel.org, AJvYcCXrrC4HsNjx3lourxduevM84DWhzHMIh5um4476k2H96VAlXBIfb2J1AVXBgx6TbLnqrMOaw0dE0r6nUJQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YzHEy200F5w4jAG/Mwy2Xjy4syPBRd33Ggn/XVBK6vl+V/s+yT9
	WUEsP9zjlH0lyHHTMLjPY/qkWmLfFrYIYW+GrVjB1B87gIOMIx02ircavTSJGMtmX0X6xKJ/qaH
	EotX99nZ/OoYFg2d19HxA/X4a9ug=
X-Gm-Gg: ASbGncuKyS6TGwlYa9eP2QMltOjyVK7w4ruS4oxw7ISATsMNcDtAzR3PZIm/1gaiNH1
	JdNq1sNDMdsvN/K7JWD/sbbC0wA3bnVICuLSLjQO0ScoWat3KgmEURlR7qFQ+3rqoY2kJl2Wv
X-Google-Smtp-Source: AGHT+IFpn+0Ep/qtsQx0CrhYpwWdaDOVPZkzmn20K4hb7NF5X0Nw57vJxTxiVfbUv4y5b8sOWArQCdXTrRbeFJtDFDA=
X-Received: by 2002:a17:90b:1c8b:b0:2ee:e518:c1d4 with SMTP id
 98e67ed59e1d1-2fbf5bb33cemr442750a91.1.1739310387630; Tue, 11 Feb 2025
 13:46:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com>
 <CANiq72n2J5N1c=-PV+-2n71WsmzWy+HH6K_YdobyWK2wYx0A-g@mail.gmail.com> <CAJ-ks9kmaJxkug9YEzE6EVp7pCwkiZQHZiq89ciQw15G3YvjQA@mail.gmail.com>
In-Reply-To: <CAJ-ks9kmaJxkug9YEzE6EVp7pCwkiZQHZiq89ciQw15G3YvjQA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 11 Feb 2025 22:46:14 +0100
X-Gm-Features: AWEUYZl1REgqHBaYklrRsFrrUMSpr3pXfBzpbGnUv0AigJSlOlXxbmcdWCszS9I
Message-ID: <CANiq72m8W7Ve_X0nQNQVdbBFxp7QD-iCQ7fx7hBwkT1rHfMssw@mail.gmail.com>
Subject: Re: [PATCH v4] rust: alloc: satisfy POSIX alignment requirement
To: Tamir Duberstein <tamird@gmail.com>
Cc: Danilo Krummrich <dakr@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, DJ Delorie <dj@redhat.com>, 
	Eric Blake <eblake@redhat.com>, Will Newton <will.newton@linaro.org>, 
	Paul Eggert <eggert@cs.ucla.edu>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, 
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2025 at 4:21=E2=80=AFPM Tamir Duberstein <tamird@gmail.com>=
 wrote:
>
> Drat, will do.

Thanks!

> Yep, I mentioned it under "Changes in v4".

I meant to confirm the reasoning -- it is all good, thanks!
(personally I would probably have dropped it in a case like this,
since the change in comments is substantial and Danilo was waiting for
the clarification from Alejandro etc.).

Cheers,
Miguel

