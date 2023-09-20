Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C70E17A8DC5
	for <lists+linux-man@lfdr.de>; Wed, 20 Sep 2023 22:29:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229485AbjITU3G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Sep 2023 16:29:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbjITU3G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Sep 2023 16:29:06 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB674A9
        for <linux-man@vger.kernel.org>; Wed, 20 Sep 2023 13:29:00 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-32008e339adso226525f8f.2
        for <linux-man@vger.kernel.org>; Wed, 20 Sep 2023 13:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695241739; x=1695846539; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YgsQjPYSA4x9EUAST26pLIMgzwk5/fmUNEDBBVE+P4A=;
        b=Ue/arN93mwyg8iKLJhbSFF+q+mIhcBN5Rk4lKj708pkihWlD0xI3IJSfskhPu6+xP6
         VlVzkb95PcBHv5G9CFMCS6cuh+Zn5o9ieWpQUkiRZ+IFh7u0NcVSBFf0txtp+IEZMUfL
         +n2iwL3jKnZtmx5XxhBGqQr8Gv4+zdi8Jai42sKOMf2Se3/fyGGgm7F5NYtz2sUViRGb
         p/NdH5VVGWL1gZhZTfBCyTUy/7eem2uQS13827nZwqCzS2MQEKvH3DWU0jloNc89dk6C
         t6Zie03d6H9qinAeckzaPSLeudx3L77cMtSPoJ3qlW2KhRvXeLEFvT+qxDyWveacRR8+
         VHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695241739; x=1695846539;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YgsQjPYSA4x9EUAST26pLIMgzwk5/fmUNEDBBVE+P4A=;
        b=ZwF8ZBV1N5F5AwOymD56IgedHjhLr/tLTl2Ep/qld0jnmETiDmU+Xgg7Er/Nubemyw
         97NWRBGOChJ6ArXAeiXQggo8EXGJLntwhgE7FWYg74b5v9bFbec93u25z6F64lnm2r6U
         XWHl372T+ra7Lw62nc4Eaf8kQQ2JCOu1KrwxawMYEpGRmPvKeusQ4eUk2vlv7hm9Dpqr
         9SALARHyLQ+N/pOgDdy32yCxdwbqJrWFO2ZtoPj1FlARP3gDFcFtVeMxPGcaXZOpv0gO
         c8PKjPtX1rmfm6TOfnAyEXM2P1dNWIn0vXthm/b+aNYybKUqxV/9uU+QVboojWMDrcGP
         U3WA==
X-Gm-Message-State: AOJu0YyQZ3U5BiA2hjemF7fcEXh9/geZ50XWghAlpq2xr+Yr1EL2eShq
        8J2ekXEcRHpBESVdsDT/Vc5JlULri9/B+nHSlc8=
X-Google-Smtp-Source: AGHT+IGDfv/YLLELO80/AwOpt2FqIG3pvnqbIIT+ZCfg9BFOvM4bzq1JUiJir9NJ7gpa6NUyZFEhhXHVmlbh71wxQAc=
X-Received: by 2002:a5d:674b:0:b0:321:56af:5ef9 with SMTP id
 l11-20020a5d674b000000b0032156af5ef9mr3573600wrw.70.1695241738899; Wed, 20
 Sep 2023 13:28:58 -0700 (PDT)
MIME-Version: 1.0
Sender: mr.qamarmuhama@gmail.com
Received: by 2002:a5d:55d0:0:b0:314:417c:5250 with HTTP; Wed, 20 Sep 2023
 13:28:58 -0700 (PDT)
From:   Dr Lisa Williams <lw4666555@gmail.com>
Date:   Wed, 20 Sep 2023 13:28:58 -0700
X-Google-Sender-Auth: RaD5QO1dRIIf5603nALuOx_XGfU
Message-ID: <CAJEdJUj51ULvzHQjTvyqWX6U0qNLV4evzUfbGxfu-kP0FaSjGA@mail.gmail.com>
Subject: Hi,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=1.3 required=5.0 tests=BAYES_60,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

My name is Dr. Lisa Williams, from the United States, currently living
in the United Kingdom.

I hope you consider my friend request. I will share some of my photos
and more details about me when I get your reply.

With love
Lisa
