Return-Path: <linux-man+bounces-115-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 623667F20C0
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 23:56:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93A831C20DFD
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 22:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D5033A285;
	Mon, 20 Nov 2023 22:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ftep8R3Q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 587A1C1
	for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 14:55:57 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507a0907896so6992207e87.2
        for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 14:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700520955; x=1701125755; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0rxgwC9xu96+Rq2NcUPetJp0vOSqmxWW011/2tR4fyE=;
        b=ftep8R3QvBDAQjLHjVv5LHnLpyNLDYP2v8I7RgKnjXj0Yx3m9NtdvoHJNHp1sCC7Ei
         iDbCEpKufoJaPSBe5iRWcYxdKA0PEfG5Kg0E22f3WmwtvkMSGIDdX+Y8VIPUv8jCwJh+
         0WVv7sZU16JUGu3+YyflT09Upi4mp3mkYh6qM51Ad6kSOesmx2SKOJNJxLWgJrabXDKh
         cdmzRugm7XAElbMx35rtTrenEUHbHSWwhjZRiCJKUwrC+otLfM+61hjmH1qhIRkY6Hz5
         dLakMCM91Vzo6KTk5IurluIgBvLpA10p8AsOn4roTe/e6En6boenI3l2Cu4AYFtbfwsL
         taag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700520955; x=1701125755;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0rxgwC9xu96+Rq2NcUPetJp0vOSqmxWW011/2tR4fyE=;
        b=CxvM6pmA7sQgaTlCoIVIzP+3kPZGFY+DkGwwle/8bpKBKFoVp1gcPt/clNxdBbdCch
         Batg4GPSyuwolYenWh8conzcL/wmshewYm9CcffqicGSObU9gtBpQlgsTsmVb1duIXWW
         vygvGdib7AVM1gsydOuYnunKDbXB1f5OC0O6+4WOWvfThU3E97wjrrybBcdmseXS1onN
         tWRnLV6y8v4dzHsOis4NZDASCEXaH/XMHQynHXBUBMupeXdfXrTSY8Gdl8kJUqjw1p2C
         SlRljNcW5MrnoebSM6cSrETXaCNYGBoqt0dEVFm+vvNKqIr32MrKaT4sE0jbyawm16l5
         cx1g==
X-Gm-Message-State: AOJu0YxvGK2wOqgrFvORnTSHAZzcPafYwCi68He/IWiZLenaVDS+d/9v
	l2J9rg+gC95FyQsa2oQwP5TXuyO4Zt/KgymN8LbzuzM52Ds=
X-Google-Smtp-Source: AGHT+IHj9xqzoZBvFKSHbr9hdmAz87i/6QMaHkgACjK9UbFaiyNMgOLTsa8fsgUWdVQpQCCJhM7LpZUNzFbsMbhZy5I=
X-Received: by 2002:a05:6512:530:b0:50a:a150:b719 with SMTP id
 o16-20020a056512053000b0050aa150b719mr5349839lfc.57.1700520955146; Mon, 20
 Nov 2023 14:55:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Seamus de Mora <seamusdemora@gmail.com>
Date: Mon, 20 Nov 2023 16:55:18 -0600
Message-ID: <CAJ8C1XPdyVKuq=cL4CqOi2+ag-=tEbaC=0a3Zro9ZZU5Xw1cjw@mail.gmail.com>
Subject: Add sub-topic on 'exFAT' in man mount
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

I'd like to volunteer to add some information to the mount manual.

I'm told that exFAT was added to the kernel about 4 years ago, but
last I checked, there was nothing about it in man mount.  I feel this
could be addressed best by adding a sub-topic on exFAT under the topic
`FILESYSTEM-SPECIFIC MOUNT OPTIONS`.

If my application is of interest, please let me know what steps I need
to take - or how to approach this task.

Best Rgds,
~S

