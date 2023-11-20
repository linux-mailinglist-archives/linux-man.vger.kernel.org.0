Return-Path: <linux-man+bounces-119-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BC27F219C
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 00:45:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E48571C21588
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 23:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C4903B2BF;
	Mon, 20 Nov 2023 23:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eaXk6sh7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50B8EC3
	for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 15:45:19 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-507a98517f3so6496810e87.0
        for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 15:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700523917; x=1701128717; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ah9E1ISrB4rQalvpnu9K57/OPj1AG1Ue2r/UR64LkyM=;
        b=eaXk6sh7mlQNvhYSPYcSlkvHBDyMSGAOozjdi54SPsGXaD7dkUgDOz6/Hqcrw260WJ
         Zkx8oevab2u9BmEq2HE+uZhTTQDo1I4ob5cIGMas8ess4hltFzmFZrzUPZIowLwsKeba
         6RjfDm6oNGTPruiS2FXlQ3NwSZfXHBEDIGMTDE/dcZaaIZ5F/ivgGOO3E65EqJbjcR9X
         wy9sNrQ6d3bAxhJXC9Swua0ZBUhJUXji3loxlIQwSEdHh7LzgQNYxLSfuywO/59g+Dnh
         RBj6yF7oZ2IHUHY9uYtt87CXV3bX9xY7Bqt8j4W/3eZDjeVc3EIC4Bgid+SiEgFMGak7
         ZhKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700523917; x=1701128717;
        h=content-transfer-encoding:cc:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ah9E1ISrB4rQalvpnu9K57/OPj1AG1Ue2r/UR64LkyM=;
        b=SHQOem2NE4WglTXQFuXc0N7hnELWK9mQ+KoPanHe7Ji5IgJ6zTz2mpR45JEfbr0UPO
         a0pDrhCjfOqfxwYqaiJlpTHSO/3DYfeaKDHiz2eSR+D9s4gdQQv+vRrTTO5k/fF3LzVp
         Z77fG0At+vPzuCsUgl/PibfrXUl0AKqpkUTTyoy1CIIl+H2exZ040D7HJyB/hIh+HMVH
         Jvx7o45eeoREiLLzN78Uck5RFCfhuyxfWUn7QOUI6h1+X5w48WIvLALzQ1/A6fUAxUpB
         WefofHLMWayyLwjS9muBcVla6Kazifq5sAWjSOjmNTbu5PB+mhNX9op6ss8bnwZwu8l6
         29lA==
X-Gm-Message-State: AOJu0Yz+L66a3Qyfz02q51UZCbfF+s3hZRklY1soabGNZ0A1jEtZGLMN
	TnoJsousetqrQmWCbPycaDBc4UqtIkU+MFSFIuAzi2TEg0I=
X-Google-Smtp-Source: AGHT+IGfr8eaLnC+MBv9p+O6tdL72dFJ3Cj9+QwoOshvySGwi5FEgQstkz0OKdVM6eZdqV7+taS3FqtCjJNa0kZiKfg=
X-Received: by 2002:ac2:54a4:0:b0:507:9a49:2d3d with SMTP id
 w4-20020ac254a4000000b005079a492d3dmr6241893lfk.31.1700523917101; Mon, 20 Nov
 2023 15:45:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJ8C1XPdyVKuq=cL4CqOi2+ag-=tEbaC=0a3Zro9ZZU5Xw1cjw@mail.gmail.com>
 <ZVvs3fgkANj9BSYh@devuan>
In-Reply-To: <ZVvs3fgkANj9BSYh@devuan>
From: Seamus de Mora <seamusdemora@gmail.com>
Date: Mon, 20 Nov 2023 17:44:40 -0600
Message-ID: <CAJ8C1XOZqA=T0z5eHTSdXvpMzBZKUmYs-9=bBUfy_Ok5wSUN5Q@mail.gmail.com>
Subject: Re: Add sub-topic on 'exFAT' in man mount
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Level: **

Uh, OK... stupid question first: Where is ./CONTRIBUTING?

On Mon, Nov 20, 2023 at 5:30=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hello Seamus,
>
> On Mon, Nov 20, 2023 at 04:55:18PM -0600, Seamus de Mora wrote:
> > I'd like to volunteer to add some information to the mount manual.
> >
> > I'm told that exFAT was added to the kernel about 4 years ago, but
> > last I checked, there was nothing about it in man mount.  I feel this
> > could be addressed best by adding a sub-topic on exFAT under the topic
> > `FILESYSTEM-SPECIFIC MOUNT OPTIONS`.
> >
> > If my application is of interest, please let me know what steps I need
> > to take - or how to approach this task.
>
> It is of interest.  Thanks!  :)
>
> You could start by reading the ./CONTRIBUTING file.  If you have any
> doubts, feel free to ask more specific questions.  You could also add
> something to filesystems(5) about exFAT, BTW.
>
> Cheers,
> Alex
>
> >
> > Best Rgds,
> > ~S
> >
>
> --
> <https://www.alejandro-colomar.es/>

