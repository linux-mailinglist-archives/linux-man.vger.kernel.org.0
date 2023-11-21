Return-Path: <linux-man+bounces-132-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 893647F3416
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 17:42:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E985CB21EFB
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 16:42:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14C5E482F7;
	Tue, 21 Nov 2023 16:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bC5piHg0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A942E7
	for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 08:42:29 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-507a0907896so8181273e87.2
        for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 08:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700584947; x=1701189747; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v/2of6mjk2dzzxEkCvE079WMM6YAYUNYk9iTFe9E/k8=;
        b=bC5piHg0gUXTqwFL1LHGYAWM0BkmVy56T1I2G4XEP9MumAAQcaQbnQ/K7YP8ArOiZ/
         r9rqzie04ODMy38SFVd8F5sCtwdgdRZ0MKzcBDEMfYAsVkb8pbYbnbBbGHYP/X9DacTO
         /msC2Or8tLkuvKZxcAfKLNkwC2gdj+PjieKn+i/l1P1MtKa9DlnCc8mvulJYIhq3oLFG
         cTuOb0pFaJynAsdDgcMmgAFf1++lpLd7tt0Mhur1zylYf/QyGD7ryNjBuzzkwXQBb+s2
         306o33lD4xbI0FPZXmaeu5IZlRJeIuSRBBzVs9s2YZmP9F25b25DicQkwivaaEHeLhVN
         /tWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700584947; x=1701189747;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v/2of6mjk2dzzxEkCvE079WMM6YAYUNYk9iTFe9E/k8=;
        b=jmKpIPfzy7/41mTz9ztCaVvsdU0bd6lYAcVdPg21KK7nk9HrDnbfY7D1g4XN7PT+vq
         2BXZfpKOV8FnpHQ84m57pZ2cn2iX9azlrMnT994hzdZ0iMPTkOSC4GMIw5HzZ11FqcIW
         NPF3SQc3oDriiFfkKuIeB3+0UIDNXGohZoMTzHva38i4v9wiPujMu9vFDkUjboaZPXOW
         k1y5dboLYvtJtvhJF6YbYwe09F7uPKBqM12sfHW+sRO52asSg22e3e5K4JCoSyZrQGEC
         4yTyTflQCrtaPDqI8c8H2nL8o6zq2keLq/526/kCEdgziu7znt9qOoBU82RmLNUbJ9FK
         zxCA==
X-Gm-Message-State: AOJu0YzJq+MfDpF+noqRew5ZP9CLzvqOVJZjNTBr9pzhijSY+4gf++tQ
	V5J6bv045QdSgkWKWMTB9LiAxHJ9mm0ujd43ONU=
X-Google-Smtp-Source: AGHT+IGN4Lf65DSP26iUKKyjIjI7fqzlLb7nKlmfO3i4iCwwdzIT1NuQecpODnQMDieK65i1KFXen8/Srq6kAGRsPp4=
X-Received: by 2002:a05:6512:360e:b0:509:8e13:48e0 with SMTP id
 f14-20020a056512360e00b005098e1348e0mr7128887lfs.37.1700584947054; Tue, 21
 Nov 2023 08:42:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJ8C1XPdyVKuq=cL4CqOi2+ag-=tEbaC=0a3Zro9ZZU5Xw1cjw@mail.gmail.com>
 <ZVvs3fgkANj9BSYh@devuan> <CAJ8C1XOZqA=T0z5eHTSdXvpMzBZKUmYs-9=bBUfy_Ok5wSUN5Q@mail.gmail.com>
 <ZVxSrmdVkalf3FL9@archie.me>
In-Reply-To: <ZVxSrmdVkalf3FL9@archie.me>
From: Seamus de Mora <seamusdemora@gmail.com>
Date: Tue, 21 Nov 2023 10:41:50 -0600
Message-ID: <CAJ8C1XM25jASCR3R3FVHUADZWD6OcoMx_EbvDb3j1EnhKeK-Hg@mail.gmail.com>
Subject: Re: Add sub-topic on 'exFAT' in man mount
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: Linux Manual Pages <linux-man@vger.kernel.org>, Alejandro Colomar <alx@kernel.org>
Content-Type: text/plain; charset="UTF-8"

> > Uh, OK... stupid question first: Where is ./CONTRIBUTING?
> >
>
> Please don't top-post, reply inline with appropriate context instead.
>
> It is in man-pages.git tree [1].
>
> [1]: https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUTING
>

Apologies for top-posting... it is indeed a scourge for mail lists
like this - long threads w/ many participants.

I think I need a different mail client... Gmail clearly sucks at this.

Rgds,
~S

