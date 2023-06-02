Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8019720078
	for <lists+linux-man@lfdr.de>; Fri,  2 Jun 2023 13:35:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233858AbjFBLfb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Jun 2023 07:35:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231876AbjFBLfa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Jun 2023 07:35:30 -0400
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A44618D
        for <linux-man@vger.kernel.org>; Fri,  2 Jun 2023 04:35:28 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-75cbbb10c69so217408385a.2
        for <linux-man@vger.kernel.org>; Fri, 02 Jun 2023 04:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685705727; x=1688297727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FbMBgVLeqyNKJUU/ht+mKVImt3QkQCyDxoBy3OuVyXo=;
        b=aq8qYeLh0uF+pjcmjviwnxNW7lRvNW1KATD26wezvIWbchxtDrNzytezISGcjPRqI1
         gaR7BuSAX/hOHwzpKXMquvRLaaFugy/P42kvnSGHtje/KJYxWz0TbJh1YCO1XIkqLadP
         cqpQzmS11Up1YkIf3zMbLXRr/53jXwufejNNdsKTMEeIVzWbDvbj329dAHlLLx+WMuVm
         ObzozmcIiGS3H97KTZX5Urb9RBPyHqe3pmeZYCtCjqOnQT4iNMHSoP0/Wbaqz+Z0rb4F
         56VRpyVHiLHPN9ug/ugQOplAMOpl1DXioGDuJN45cPi3MJcUsMVugdPZydZnDBJ8fhey
         xZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685705727; x=1688297727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FbMBgVLeqyNKJUU/ht+mKVImt3QkQCyDxoBy3OuVyXo=;
        b=WQ5QbtfEPLfdgGVbH9zocaQuJtU/AqlencX+uSKqewqP5ZmeUFPtfQ3U/dTbpeCkpC
         qnklL22ywn0x8zwFJkpDCd9nMPK6dxwYlJMHxirJ2r3WzJc5ocL0lRmLBvlQam1GJ+J9
         TIpEvgQZMROuSIFBporEQVtoXeh1fwdlKkWLDo+UNDnMQ5TJN+0vDrO1UgAeA0i9a3XO
         Cyqg+A+sPF8Zjs8AvJpfr9l7BNHHdgr/zc+1/eb2GC49hILAwQ6ONBPLBFo+Nr8rvl7u
         X7waaWQkLqXtT/IZhyrGmOj3FkbVjf6AHnRxZV3bIc5AqnmVbk8KLveMEPrPAvU5jals
         mMlg==
X-Gm-Message-State: AC+VfDycqUdOs1tY0/BYYbmGgz/ZGuRkKEWBQNHRfN4EC74sVcXkf163
        RSF0mEWmxGB9TwZYTFFOkbNeGyHkmmeXPq1xyOzK9hdEKTixsg==
X-Google-Smtp-Source: ACHHUZ7Jf8waoey4/EqwhZjZ+Tlin1w30BnyZaZ5KiyAvlV+GElKqAEFCWbw7lp+Kw33GT+GgPb08dBe6AfwvJRXdes=
X-Received: by 2002:ad4:5def:0:b0:623:8494:9946 with SMTP id
 jn15-20020ad45def000000b0062384949946mr11908568qvb.45.1685705727598; Fri, 02
 Jun 2023 04:35:27 -0700 (PDT)
MIME-Version: 1.0
References: <bug-214885-11311@https.bugzilla.kernel.org/> <bug-214885-11311-M5kG7tptAp@https.bugzilla.kernel.org/>
 <CAD66C+YnJ6oAL2Qh0s91Pc5U5+8StgcyuU6P=hAoYp7Vu_J-Wg@mail.gmail.com> <c4ec42cd-c72d-76e2-0078-f8b68f525152@gmail.com>
In-Reply-To: <c4ec42cd-c72d-76e2-0078-f8b68f525152@gmail.com>
From:   Mingye Wang <arthur200126@gmail.com>
Date:   Fri, 2 Jun 2023 19:35:16 +0800
Message-ID: <CAD66C+aPZxQ+FQaFUgDAZoD_FSamWLTUiBjD8ZC3kCHn2HdVfw@mail.gmail.com>
Subject: Re: [PATCH] random.{4,7}, getrandom.2: Adapt to Linux 5.6 changes
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Thu, Jun 1, 2023 at 6:20=E2=80=AFAM Alejandro Colomar <alx.manpages@gmai=
l.com> wrote:
> If some changes come from Linux 4.8, I prefer having two separate patches=
.

Will do.

> Just wondering:  how is this description of /dev/urandom different from
> GRND_INSECURE?

It isn't! I reckon that they added the flag to give device file parity.

> Blank lines are wrong.

Will fix.

Thanks,
Mingye
