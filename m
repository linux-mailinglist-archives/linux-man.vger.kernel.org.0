Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5A2470AD42
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 11:37:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230145AbjEUJhG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 05:37:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbjEUJgV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 05:36:21 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC845D7
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 02:36:16 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2af2451b3f1so27732121fa.2
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 02:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684661775; x=1687253775;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4jlL8pzL6NVZbuVjV4h5KPilkuQmPMJRpXcDIhZ2tX0=;
        b=J9fCeM50HI6aKasuIiiiBf3sJUClnRowBaahZbOZb2yxWyeV+TeP848caKwyiCxcw0
         TNQywZMRTBBlYF2L2Ow2vLrf/MlQhyhztcDSFnX5RdQdswuZyBesjwgx4FSmwsMAxDuB
         tdPmPvcNmOWxOqRZtgFW8s3DqoWLw3xNNxq7rarqq1Kwzet9NDCuX5rTsGcMbVeuhtc4
         aBYs4KrC+6WRqQ2O7h4hpE+IIPMgXAvzj400NqLjz5z0pGIbz0nyURu/2NFdwYKrIcoi
         +U674wUxpyEvWw5etbYF6B5nTI049vDgv/zwImjqEPMVUX5DKvIh1MPUFDvpJH/gKXNi
         9MjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684661775; x=1687253775;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4jlL8pzL6NVZbuVjV4h5KPilkuQmPMJRpXcDIhZ2tX0=;
        b=H9Y25PLDuX6Pinojn+Mnh0j0IOI70J7AOzdOR0rfqB4ebs0lCNFr/YOVYb7nvW2xPG
         6+5x+grMx3/8aOdR5OKUjxewuia+GEaDPOTktJTIYgCecm21n2OZh+iivE1TcSWuHIEL
         jVoLdyBEAiKL9mn2DCfL3vzE+vTjLsVsmlewgRB9olv9xaUgG/8vZrILlK8zccUUlxxd
         /Fta4R7vs1Jpfqe58aYd4nRsCaDfsmfl3YDmG9IcK8soI2u60tyHMIlSWPlWUPYwPaqP
         FKCyxX/6mIIOqIOfX7pIlzuklysU6UOSKsJxbZTKVAzdekd6Qq+Vk6r2i5gKzDcTWRzD
         8t6Q==
X-Gm-Message-State: AC+VfDxpfiLQk8DXXI6bfl+2XIQIgfbY1DyBh29gbfzqF54gUZ7mbYEg
        4lBkCAywuLeGrRw12kBrmpv6GWMUN6iZCDUY4yY=
X-Google-Smtp-Source: ACHHUZ7vkIHaMuXduxVNHyZfndou0BiGfzrY2X+0hMOHbxdAyTy7W5l5B/6zvlWq/LvdJy45CmvcsGaEr3kKk1yGrCs=
X-Received: by 2002:a2e:919a:0:b0:2ad:988e:7f8e with SMTP id
 f26-20020a2e919a000000b002ad988e7f8emr3206317ljg.51.1684661774640; Sun, 21
 May 2023 02:36:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:240b:0:b0:2a8:d38d:f29b with HTTP; Sun, 21 May 2023
 02:36:14 -0700 (PDT)
Reply-To: ninacoulibaly03@myself.com
From:   nina coulibaly <ninacoulibaly90@gmail.com>
Date:   Sun, 21 May 2023 02:36:14 -0700
Message-ID: <CAMPxFe=KMVBx4Q3zMsR6aOAiAxpsGtO=amW+8dQwT88qkAX9pg@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
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

Dear,

Please grant me permission to share a very crucial discussion with
you.I am looking forward to hearing from you at your earliest
convenience.

Mrs. Nina Coulibaly
