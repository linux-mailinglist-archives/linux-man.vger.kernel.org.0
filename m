Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 324C35FCBD9
	for <lists+linux-man@lfdr.de>; Wed, 12 Oct 2022 22:14:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbiJLUOL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Oct 2022 16:14:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229616AbiJLUOK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Oct 2022 16:14:10 -0400
Received: from mail-vk1-xa30.google.com (mail-vk1-xa30.google.com [IPv6:2607:f8b0:4864:20::a30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9EB39413E
        for <linux-man@vger.kernel.org>; Wed, 12 Oct 2022 13:14:08 -0700 (PDT)
Received: by mail-vk1-xa30.google.com with SMTP id q83so8703333vkb.2
        for <linux-man@vger.kernel.org>; Wed, 12 Oct 2022 13:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ONlceMnKfjMV21zrQZWMKxXsSKGHAeSAHPSSGUM44p8=;
        b=RIUIrQnzk9YCvQ9WoQiySbx8dAS1Y2uNGf4YYciVceSiW8S+fUiSyPaYrzhgP980wI
         MilDCzIL6JwWYi2RTtyQboKU+e0eBIgY9RRZBrP5gW5QoJ2Vo8pefYwzLK5FVutSUX6B
         JADx3SbisIBJUqZ+/vqELHv8WwDQzvqkAUaGJPdQ3CFyCzP8YeL6TbhrWMOFipyRhBCh
         u678szdxvovjKZR9UHQM2dpS3T8WxFOdx4RYkVh4sRgfTzDUNNfEQ4OQNx3mrt6/1ecK
         KUpRX8nxsbDV7wM+Bb8Zeq3m90tnO4/rsskC6FsCNoX4L8ybvcZWR4q1hUyp48o9goLv
         CNKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ONlceMnKfjMV21zrQZWMKxXsSKGHAeSAHPSSGUM44p8=;
        b=pHIU8ESU++406sK3h3SHqi5VhkTX9/WmUoalxeIExdiGVx+WGbuHdUxgrVwtKSXC1s
         45e31FjDXf9NFREhXHCtG55PZaYCCdYIEXJVnxwddhKs6+LGH/723rvS5MOrM4zZemmz
         i8sPZraxhw8E2HEBhI9HyTYAF/Bmqd7k8ai4p6DHV7qXPiCRuSkb2wY0D4zSh+TIaMF1
         dE1kRGmAeoJq2j9IrwtSmFnzE0UO/5PL0pM8elaS/ah8ZViJ1Z4i18fndUbxPLmQdRZI
         tMRPU9EZphzP0i5r37BdPjWlcxethXm44OvCZ8KjkWrTFkOQ6RMv5b1IaEye2UiQBNfx
         RRLg==
X-Gm-Message-State: ACrzQf3QfA8lhA7kOrB31r6gKOoakWkA61n+mYocfjzVJe3G1pXDowJe
        Xl6Au1pxMi9vBxi2kBMrRiHXeXUMHo+mM94Y04E=
X-Google-Smtp-Source: AMsMyM7H0FtEg+5c+piRtMRxG6SZsAb2hQuUZkY8OXm6pK4DkREclm1vuLpMp/wrLfBICycAIN7Ql6J5h0TpEq+OGmw=
X-Received: by 2002:a1f:5782:0:b0:3ae:ed37:bcc6 with SMTP id
 l124-20020a1f5782000000b003aeed37bcc6mr2199295vkb.32.1665605647857; Wed, 12
 Oct 2022 13:14:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:612c:23a5:b0:2eb:e454:9b09 with HTTP; Wed, 12 Oct 2022
 13:14:07 -0700 (PDT)
In-Reply-To: <20221012155224.yhlmkaid23aumzoo@illithid>
References: <82b77010-6b42-a58a-f8c7-b977297d6832@gmail.com> <20221012155224.yhlmkaid23aumzoo@illithid>
From:   Dave Kemper <saint.snit@gmail.com>
Date:   Wed, 12 Oct 2022 15:14:07 -0500
Message-ID: <CACRhBXMHC97Q=dGFAofpQCr1=HV-PMkmq2teaNnT9uoC7m9iag@mail.gmail.com>
Subject: Re: 3-word compound adjectives; the return of the '-'
To:     groff <groff@gnu.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/12/22, G. Branden Robinson <g.branden.robinson@gmail.com> wrote:
> Similarly, we say "thirty year-old bug"

The singular might be unambiguous that way, but the hyphen
disambiguates the plural: "thirty year-old bugs" is 30 bugs that are a
year old, whereas "thirty-year-old bugs" is an unspecified number of
bugs that are 30 years old.  Given that, omitting the first hyphen in
the singular case looks odd: for consistency it ought to be applied
there too, since you're clearly not talking about "30 bug."

Plus, that hyphen is conventionally used even in noun form: "Stop
acting like a thirty-year-old."
