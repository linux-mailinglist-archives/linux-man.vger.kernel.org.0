Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0890B73CCB3
	for <lists+linux-man@lfdr.de>; Sat, 24 Jun 2023 22:56:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229449AbjFXU4j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Jun 2023 16:56:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjFXU4i (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Jun 2023 16:56:38 -0400
Received: from mail-yw1-x1142.google.com (mail-yw1-x1142.google.com [IPv6:2607:f8b0:4864:20::1142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACB42E79
        for <linux-man@vger.kernel.org>; Sat, 24 Jun 2023 13:56:37 -0700 (PDT)
Received: by mail-yw1-x1142.google.com with SMTP id 00721157ae682-5701eaf0d04so17509017b3.2
        for <linux-man@vger.kernel.org>; Sat, 24 Jun 2023 13:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687640197; x=1690232197;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kGdDTxr9pzCNDWwoV4E0AH6x7uHsfgAUg6k7lfhvQ7c=;
        b=M/rupNVI+DrNNNEWDLaHdfy8SZJ7KiRvQj6IJ/7tdu0xPJ/UEKLaxuDVz65XUOEgl/
         SgD828Cc2+j/1HWgxUHPXWbd1E22kmwV9yn4hHBcm8NBUa+6FxnxsN0FjpTc0Zzms65l
         HUcI/T31LIUfZz1iDz6TukypVNbTota+eSPaZyI3JcinP/jD0yl43JyxRjzoo5l+Dvpi
         P4KDr3s0c2rpK505qVRGQ3aKq1I8qTrnEi8ERUQGHhTPnPXHw3Gd4JErTUARrhHR9DPi
         xEsDeJI5mNvyYaOTE5lPhasLdJCKQ1J51pDRfvIpZ6YycEGFEuk+1Yto+NPJUzZfMt+W
         MLWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687640197; x=1690232197;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kGdDTxr9pzCNDWwoV4E0AH6x7uHsfgAUg6k7lfhvQ7c=;
        b=hg4UG9whAy89+M8bkOktXZrMM1MBZzxSaV5cQMw0RSMhRI1qvHHZyIg3CEf2pZwekB
         vGAQnMBVth5w6lmakTPH8zT2PM4NW31LWZUL2fOeqc9Ad0tMLcVFD2KkH1ye019zu1fd
         IqCJNJQwkiPdLpEMM1PmZPLaUI4j7MD/3hIsY0O37rT9gbyYQUAkOSqll0aEY/2oBv5g
         NTRfCjnasd8vVucUCDmSerKrHAHO3HsWNY6PZ6NBVj1qAbHteW5YYNuF7PyiZUkrNCUW
         7/p/HA1/gPzKWSkemLgDjk4PJy3xbdCWk5o26CKzXuzJFVbnnsc/W5UDNvBC1JeA4LZ7
         WhHQ==
X-Gm-Message-State: AC+VfDyIkxUZLz35keC6sgTiTAVQglXwsiyJMGkq4YjI+mg0fW+6NJDS
        J1vmUyyL6Fjl/JvBWordPPwI35FPKXrVyruGMuE=
X-Google-Smtp-Source: ACHHUZ5L6t85t7CuoV3uZr/AXpWT6widJIWI7bx3AwrLfpiU7jMvY3SYq6l3/A+A3QLICyUHB9WgtNxpfPz50Ih2xVo=
X-Received: by 2002:a0d:e615:0:b0:56d:2bab:947e with SMTP id
 p21-20020a0de615000000b0056d2bab947emr24501712ywe.43.1687640196858; Sat, 24
 Jun 2023 13:56:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:948b:b0:4d4:6e6d:625f with HTTP; Sat, 24 Jun 2023
 13:56:36 -0700 (PDT)
Reply-To: a00728298@yahoo.com
From:   audu bello <d12u819@gmail.com>
Date:   Sat, 24 Jun 2023 22:56:36 +0200
Message-ID: <CAE8=1O2mNBGvuH_SQY7cm6ZKWCrP5SQc2bRx4UxWzaJx3+4Bcw@mail.gmail.com>
Subject: Hola
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=20
Buen d=C3=ADa

Me preguntaba si recibiste mi correo electr=C3=B3nico anterior. Por favor c=
ontactar
r=C3=A1pido, es muy importante.

Gracias
Gerente de Auditor=C3=ADa
