Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2F5B7DBB1F
	for <lists+linux-man@lfdr.de>; Mon, 30 Oct 2023 14:53:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231789AbjJ3NxE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Oct 2023 09:53:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbjJ3NxE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Oct 2023 09:53:04 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8219997
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 06:53:01 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c51388ccebso62688161fa.3
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 06:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ionos.com; s=google; t=1698673980; x=1699278780; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mJHkfTJFZrPBPTdNX/FSuK1G660C9dM4Kl5fPwtyz+E=;
        b=R+P+0PPr2rWrJmF5WHWtvpjC4kTrmcZlxmmwdBzHzHf0tPoI6zhTyDe+SGFt3i8bcz
         w3KHBx+7Vae/WsGM5gpsed27cIluG9HoeTP884IhI3yigTj9tflPnmSLC40F8o6YEbM8
         G/WVx7/vsXWR8iKTloWjXqlo66AZ2X2apIPwPPwhKolWsX+CyBeIHLv4+DEd0KQK11n3
         XXVE9TsXuTnICmXD+ccoshpSePZKnfL+xP8sSvs3J7iA6/3MFvgR0K5bzrbFvy32Qfs0
         GKAApUqezCfl4LLBkefp1Ic4R9N4S+lLioC//mKOPKLPun5Kd1X92DoKUypWW76MEdzD
         Gt6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698673980; x=1699278780;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mJHkfTJFZrPBPTdNX/FSuK1G660C9dM4Kl5fPwtyz+E=;
        b=ftXhQ07epHNvlFd2XhhcBKz3URLcM2qKdoJkgcgAVUAqbkuIjacCJ+dsWOiLQPmlpv
         iJcERush/M0JjuK7czWdImbJo6VcLi8UmIh9gJmJ7pSthmKYEsian5KdVizQdbxxc08b
         rKIMbj9xmYwFjidY/H33ut68jpf2PH2YjZLwXj1ugAThYlkFILzAbaK0hIZCLewLTwlw
         7HAjolunx60exCEQF0+jYRfbLVJefbaUIXEUzM6TUTwFpTk+qV9YiFFAsUHkz4JD7r93
         di99loHU5BHZO4bSqvusw0pwOa4vcylFVYIe3Xd8qNcRM/8I81Fp9muvwXgf0Jxlil9I
         FvgA==
X-Gm-Message-State: AOJu0YxapgLccrboN2MSMMcBy1Oly9Ml/xe+8VFHEQld5PpuRWRJ/guE
        anOOgGNTqLFHoZOyVkJcg2ebsgx5lprYvcCQSRaRTw==
X-Google-Smtp-Source: AGHT+IFjb4rvVo/5ZEVWNw7HUbC93f7wpqA7WzBwtnzyGS8VFWGK51VVBob5WIAmikaVSogpPwVSPBv/0C8xZow/k9M=
X-Received: by 2002:a2e:5012:0:b0:2c5:16d0:69ab with SMTP id
 e18-20020a2e5012000000b002c516d069abmr7462640ljb.44.1698673979796; Mon, 30
 Oct 2023 06:52:59 -0700 (PDT)
MIME-Version: 1.0
References: <20231030125835.568711-1-max.kellermann@ionos.com> <ZT-0Aip9lh1ZoywW@debian>
In-Reply-To: <ZT-0Aip9lh1ZoywW@debian>
From:   Max Kellermann <max.kellermann@ionos.com>
Date:   Mon, 30 Oct 2023 14:52:48 +0100
Message-ID: <CAKPOu+_XsNNYLvM=0KvEF1vUW4hANCey7YjZkKdhxtxJME7YeQ@mail.gmail.com>
Subject: Re: [PATCH] man2/clone.2: clarify that CLONE_CLEAR_SIGHAND does not
 affect SIG_IGN
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Oct 30, 2023 at 2:47=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
> Would you mind sending an example program that proves this?

If you need proof, all you need to do is look at the commit adding the
feature (or the code comments it added which are still there):
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3Db612e5df4587c934bd056bf05f4a1deca4de4f75
