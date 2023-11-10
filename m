Return-Path: <linux-man+bounces-6-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C56587E7EE6
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:48:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A7EF281463
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD543B7A9;
	Fri, 10 Nov 2023 17:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LYZLyU8T"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B733B29F
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:46:45 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8D912A240
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 02:41:01 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-53e70b0a218so3099178a12.2
        for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 02:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699612860; x=1700217660; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TYbDJIMnJS8KYy8adpTod61Q9nYt2wpdsTC6s6iqVuc=;
        b=LYZLyU8TnJtTGvFrOL6x58rPcTX4iWruqwNXw+teqfeMZ6q8BWYH7N5a/4DKP3hHzX
         OfAZGYnv9u21u75f88HtyIs7gUTZJUptAqOS1yWDcdojzQEGLspeZLzZ6/WHSHCFyUUL
         kK1m87G6wItC9hAVxr8vtirrblonEjcJEPwxIwdQjt9/mgczZ5eLHJ0dXLFot9WK1817
         jLoCUFaWyLKYNDuuZ/OpI5UD1n3662YOFAJb7CzbnavE6VDb7XznCWM6svl00jrDThs/
         gyKBATk1Kj3HLbp9SFgnMrrg7URffN/EMvWHK6IewCLmGCQrA2hpju8Y+r8b/rPei+WF
         WewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699612860; x=1700217660;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TYbDJIMnJS8KYy8adpTod61Q9nYt2wpdsTC6s6iqVuc=;
        b=XZBT9vRzhIGPk+i5kAnYJN2ot5xp3OeFKvM+6xHJRvBcr7eh3dSn6bbAy4sYWxr3aD
         giM5opBkwNusk1AQyBuCDH0AAigrZL+vRTgeIzh3HtiZcYwx/uRBUy1bMIPeUhHCk/9t
         dCljlu41qMeO8RXNMqF6DJULRTwLa/HBLvL0Z9MbtnKkPCwI9g3XIgKLIvR0O2UNE0Gv
         el9+1Hv+jtLZHpNXP6QVRSz3WQ6+TjDHkxhUsTipbWTNZrlstob/IkQ3RO7qZqJCW5hY
         AO29KdGFNjNPAH+0jAauu3hAKQlnAVTLDV19ers/YCemCac2R3PJy/dKB/EupVFoKH9x
         BKvw==
X-Gm-Message-State: AOJu0YzvqBWYUgcHqM15DNfHCxJoeeI80eqr968a37o6VwSp9xwcfgSt
	0atxtTVB+jzNC5DEYPowMbU1aGLmRHDADfq6ov8=
X-Google-Smtp-Source: AGHT+IHuCi75siSAoOPWqkb6l5yL2Xe5AkbD4TjcbZxH8YstzvqumkFVFRCW/Rb5lxiLQlBfb62DupOPqfJEPCY4xpo=
X-Received: by 2002:a17:907:7ba2:b0:9e1:e1f5:2bb9 with SMTP id
 ne34-20020a1709077ba200b009e1e1f52bb9mr7390577ejc.30.1699612860200; Fri, 10
 Nov 2023 02:41:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com> <ZUvilH5kuQfTuZjy@debian>
In-Reply-To: <ZUvilH5kuQfTuZjy@debian>
From: Stefan Puiu <stefan.puiu@gmail.com>
Date: Fri, 10 Nov 2023 12:40:48 +0200
Message-ID: <CACKs7VDsTdSNwbC6+2LtQ67J_eJiD814xkw2_5XM1Q=iMjLXJA@mail.gmail.com>
Subject: Re: strncpy clarify result may not be null terminated
To: Alejandro Colomar <alx@kernel.org>
Cc: Matthew House <mattlloydhouse@gmail.com>, Jonny Grant <jg@jguk.org>, 
	linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Wed, Nov 8, 2023 at 9:33=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
[.....]
> strncpy(3):
> CAVEATS
>      The  name  of  these  functions  is confusing.  These functions prod=
uce a
>      null=E2=80=90padded character sequence, not a string (see string_cop=
ying(7)).

I'm a bit confused by this distinction. Isn't a null-padded sequence
technically also null-terminated? If there's a '0' at the end, then
it's a string, in my understanding. Or was the intention to say "a
character sequence that may be null-padded", where the case in which
there's no padding at all being the reason for the distinction?

Thanks,
Stefan.

