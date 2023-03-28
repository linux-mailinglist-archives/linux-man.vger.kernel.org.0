Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92C836CC993
	for <lists+linux-man@lfdr.de>; Tue, 28 Mar 2023 19:46:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbjC1RqN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Mar 2023 13:46:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjC1RqM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Mar 2023 13:46:12 -0400
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A869212D
        for <linux-man@vger.kernel.org>; Tue, 28 Mar 2023 10:46:11 -0700 (PDT)
Received: by mail-qt1-x834.google.com with SMTP id p2so7625550qtw.13
        for <linux-man@vger.kernel.org>; Tue, 28 Mar 2023 10:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680025570;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8JznIRGOkP2NEIWf4eImjXNoLJKVCYKdWTOqrWmVS94=;
        b=iAfI5IJO/1u7u/I2Ff728SC81E++PaCJfzzPoi3MT4yhvgkDfQk2KnolrSNn5TVigy
         fGXWyHw6qAUTNA9QE1qFpZ+FpUF0ZCProur6Zf1EVT74HnNFq7wW16kM44VtZQ8+M92e
         JEsb4BhIRp5P7ckckJR90Mt8+1D+sCUKGj62f90L47k7Lt2h27ajooXsSyGQ5U9w76Hd
         +rOMTveMbDrc7X0+tOPZVBC/BxHm1RUj/3NohTPxZf0xY4eX+dh/stZi8kTwpqhTr3+K
         /rqshKf4zsH5C9HNV1kBWk3ovnMxGmWBZ6yV+UKPZ2CRBWUAaydOUH1cDvyWhFhQ87/G
         7MQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680025570;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8JznIRGOkP2NEIWf4eImjXNoLJKVCYKdWTOqrWmVS94=;
        b=7LfqZq4b1Vg3It269bcWvEpO778xNEWU+yTC55EjxR/pPQxkQ9ZJg0OsZVw9n/W3My
         llZ477TWOELrhk56URZk5MOHamuLUUWMko50LXnCF2D4FVk20wtU+5A3Ho/aGys6VaN2
         bgPx2xZ8CpaGAq0ip49YN+iRHncieYh6LdhiZH5rXokz4MCvbsK7SVW4Vhf3OSqrzNqh
         gR83iHwnRA5M6VmEMXg4Wh6AmKT/ZXjm+ZSAODc08O0+TNBt7sZtY4m2cRhGgNIMZxPW
         mlrOU8Jndy0879d9zKhWR9wDkgy4hN6Fo+HOqVH2pluZY0H735eZecCnCqfkOeYyvifi
         4DBA==
X-Gm-Message-State: AO0yUKV32OkzShq639iFuPiHxTQJiSiHItZ7TPNfz6iCaEJ127SuaMcM
        2BkCXmz1I92TyLflQYH37SUwHy0GToksCbF/jFM=
X-Google-Smtp-Source: AKy350bP2I5/3Xyp7HLrVOhfiD1JvYhidgv7P/GPBOR3nvectLaHXngTbp+Ax3+O99Q8BdO4C3ykNzlJ153SxuzPnvY=
X-Received: by 2002:ac8:7f88:0:b0:3e3:9275:17b4 with SMTP id
 z8-20020ac87f88000000b003e3927517b4mr5942418qtj.10.1680025570666; Tue, 28 Mar
 2023 10:46:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:5b15:0:b0:3da:ef36:569a with HTTP; Tue, 28 Mar 2023
 10:46:10 -0700 (PDT)
From:   audu bello <w21smed@gmail.com>
Date:   Tue, 28 Mar 2023 19:46:10 +0200
Message-ID: <CAL131226mccLnqD_pvRY8HbJsXpEstwLN5++4fg+9iQJg6KvUA@mail.gmail.com>
Subject: se requiere su atencion urgente
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=20
Hola,

Tengo un asunto urgente que tratar contigo que cambiar=C3=A1 nuestras vidas=
.

Por favor dirija toda la correspondencia futura a m=C3=AD a  : a54111045@ou=
tlook.com

Gracias,
Gerente de Auditor=C3=ADa de BIA
