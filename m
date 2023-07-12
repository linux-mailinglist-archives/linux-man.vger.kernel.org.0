Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF4C750500
	for <lists+linux-man@lfdr.de>; Wed, 12 Jul 2023 12:45:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229931AbjGLKpJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Jul 2023 06:45:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230258AbjGLKpI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Jul 2023 06:45:08 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 100BFC2
        for <linux-man@vger.kernel.org>; Wed, 12 Jul 2023 03:45:07 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f96d680399so10122900e87.0
        for <linux-man@vger.kernel.org>; Wed, 12 Jul 2023 03:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689158705; x=1691750705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lEyY000OC90euETDQqifc31G7bhJ59Yx8+cxqWZmPZU=;
        b=sc3T5Rc+kvExS1RljwDQ0QCH7AnqjgHob7mEVES//UNeaUkPjHDCca3XrgQkX9W9k2
         1+vaAp+/S4NrlAKPCVR3rbprcdnIJ/aLip6x0byaAgk2JAZNth5+clCSTVUBYJAbRlnI
         ti7f4r6K4+hzBZCi2Cm4zVgd50vLenTl8ObkPtulnIHbNY3oSglCiPd6T31JVYa4MuJ7
         Zo7X+ZtDSP1vus8h5k4RhuH5uyeGx285c//5c6oMexKzkAhmDFHT7mSZb1eXH9Fhh+gK
         7qf0GdxL4+hDj+Ef98iy1couzNFQ0YAIePo3tiFNh3yHykfQcxrepli6GHeNDwNLLtsv
         q/3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689158705; x=1691750705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lEyY000OC90euETDQqifc31G7bhJ59Yx8+cxqWZmPZU=;
        b=BGTlUIQNs0jpMrfe1vBgl/CMBjHLNkC7waqFXfChwUaTSqroVTc0ILJbLa+gQiBg0J
         WUJ7g0ApU1GGKcBShTA6OnD11EjZAOD0xR1vFUCMlm7lXybFtjeZDGXXBXsfHSViiPnV
         l8r6U4yjfYGwiOcmC+G4HAHxPfScpJMktz42hPpr0d3dW9slOcLs64Oz1gBtDHktf3JJ
         zpfFkmsdBdKbWHObo6plz8I3dKOUv78ftc47cGNdotYkMCCoSmwnV99nT268fKr7x0dY
         CzlwbNirVGQzjuzqsCh7L86OjsWlk0WOKP1AF630W2dcznXtJwST74czuZykUlqg5rZM
         m5zg==
X-Gm-Message-State: ABy/qLYPvNHLczKo4FHw3GWUqnXZr2helkbKj5RdKHMf7Dun1195f0U5
        6HHRX5lmitEnHE0TuZXrfUAcRvlU9HMBsMwVZ/U=
X-Google-Smtp-Source: APBJJlEQcd8YqvP7jV9BnswM3ZQF58YQ+D1TdyGs3M0ofjdRu0GClp1sM6Ia8Hjc6Qfk0PJ0MFgUZnKk+D6XqxGTVrE=
X-Received: by 2002:ac2:5f45:0:b0:4f9:8c08:57db with SMTP id
 5-20020ac25f45000000b004f98c0857dbmr15724956lfz.58.1689158705032; Wed, 12 Jul
 2023 03:45:05 -0700 (PDT)
MIME-Version: 1.0
References: <6aa0c5c1dd37704e283794ed828461d1e0831780.1688997554.git.tgolembi@redhat.com>
 <20230710152150.b7lwmzwmuqjxxsiv@illithid>
In-Reply-To: <20230710152150.b7lwmzwmuqjxxsiv@illithid>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Wed, 12 Jul 2023 13:45:01 +0300
Message-ID: <CACKs7VB0mkKo4f6D9QkFmFuA2UZT24vQVV8L_ZsbNujNVGpaTg@mail.gmail.com>
Subject: Re: [PATCH v2] abort: clarify consequences of calling abort
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>,
        Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Mon, Jul 10, 2023 at 6:41=E2=80=AFPM G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:
>
>
> At 2023-07-10T15:59:28+0200, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD wrote:
>
> I believe Alex's preference in the Linux man-pages project is to
> document what is actually implemented, not to repeat normative language
> (paraphrased or not) from the POSIX standard.
>
> So glibc should be tested to verify the behavior it actually exhibits,
> and the language above then updated to describe that, noting any
> deviation from POSIX's prescription.

At least when Michael Kerrisk was the man-pages maintainer, he would
usually ask for a test program proving that the documentation change
is correct and / or a pointer to the kernel / libc code, where the
behavior could be (hopefully) inferred. I think this is valuable, it
makes it easier to track why a certain change was made, and how the
behavior was observed at that time. If running the same test case
after X years yields a different behavior, it's clear the change that
it triggered no longer stands. It's also fair, I think: the burden of
proof is on the person suggesting the change.

Just my 2 cents,
Stefan.

>
> The same can, optionally, be done for other libcs like musl.
>
> Alex, please correct me if I'm mistaken.
>
> Regards,
> Branden
