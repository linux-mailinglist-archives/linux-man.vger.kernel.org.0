Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4511E57C036
	for <lists+linux-man@lfdr.de>; Thu, 21 Jul 2022 00:44:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229686AbiGTWoZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jul 2022 18:44:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbiGTWoY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jul 2022 18:44:24 -0400
Received: from mail-pg1-x562.google.com (mail-pg1-x562.google.com [IPv6:2607:f8b0:4864:20::562])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 918A948CA0
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 15:44:23 -0700 (PDT)
Received: by mail-pg1-x562.google.com with SMTP id g4so17770047pgc.1
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 15:44:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:dkim-signature:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc;
        bh=QmCPW65uErEg9CJNKgUgQa+j3X1iQ//lVfWHddlHiNY=;
        b=dOd4+d93ZAvJj2y2rDcNBOKxLmpDsAzWB/kifcU720KYqh+QsA1Axqyt3OK4qGgpDL
         nwLsiCaMMFgQB3NofNt+jWvq6xmlTbQ3hmlPOrUmcmbRkpVC8z0yGA3axeQswq23aKxz
         AArTbjzanPFVVgtBp8lUAVYkGqNh7W1CJXskVsaNssvJX8RZIJ79htymiShfhxhw9C7h
         Kl135eqPV6RBLFLEcuS8jSc2lXEGdVmJmQwWni1ffV1+VmmbwXJgn5Gk9PYydiyEJdSf
         N5kLvQvyzpSg9DnqbsEf+BjbHssYUmw8/ZE1rz37nSaknU52OuEiI+8WG7PGBVBwyDw0
         YaWg==
X-Gm-Message-State: AJIora/T40gY8+7nnIKx+D7JcY9c+VQ0NgMmVyO+4hQeCql53sYIsNiI
        dv6JAS8JQ+LES01LTLoTkDNd656Sg1xo+8UuCx4Mu/Dojh84Cg==
X-Google-Smtp-Source: AGRyM1u1zq8a7cWj5NtLxhYNls55PZXaEkqaGwlt+YEmo4xg/m+5vPwcUhffVBgnn5rfSBiscSM2wpGef08Y
X-Received: by 2002:a05:6a00:1941:b0:50d:807d:530b with SMTP id s1-20020a056a00194100b0050d807d530bmr40737110pfk.17.1658357063173;
        Wed, 20 Jul 2022 15:44:23 -0700 (PDT)
Received: from restore.menlosecurity.com ([34.202.62.174])
        by smtp-relay.gmail.com with ESMTPS id ji3-20020a170903324300b0016cda9d5e9bsm17028plb.1.2022.07.20.15.44.22
        for <linux-man@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jul 2022 15:44:23 -0700 (PDT)
X-Relaying-Domain: menlosecurity.com
Received: from safemail-prod-02850030cr-re.menlosecurity.com (34.202.62.175)
    by restore.menlosecurity.com (34.202.62.174)
    with SMTP id 7f66ef60-087d-11ed-9556-5355e8d6d399;
    Wed, 20 Jul 2022 22:44:23 GMT
Received: from mail-yw1-f198.google.com (209.85.128.198)
    by safemail-prod-02850030cr-re.menlosecurity.com (34.202.62.175)
    with SMTP id 7f66ef60-087d-11ed-9556-5355e8d6d399;
    Wed, 20 Jul 2022 22:44:23 GMT
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-31e6ca3d1efso303977b3.9
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 15:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=menlosecurity.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QmCPW65uErEg9CJNKgUgQa+j3X1iQ//lVfWHddlHiNY=;
        b=MYPTtDEDB7pDmH8+MC7mZSh4odr5C/hi6kVD1bJvUbLKquk2iCl5KOaRrRg5ZkVZnS
         0fqyW1pM0GSjYL8aZaZN3uQ0dLNTGWaEgZ0gT37G4QQ1p9F3qB0kAinM24pqpxsbiqPW
         3YbeNmuCMYfMn97hpQPRLCKbm9NvxLWKLDX00=
X-Received: by 2002:a81:5d06:0:b0:31e:3b24:4a86 with SMTP id r6-20020a815d06000000b0031e3b244a86mr16227111ywb.245.1658357061633;
        Wed, 20 Jul 2022 15:44:21 -0700 (PDT)
X-Received: by 2002:a81:5d06:0:b0:31e:3b24:4a86 with SMTP id
 r6-20020a815d06000000b0031e3b244a86mr16227100ywb.245.1658357061487; Wed, 20
 Jul 2022 15:44:21 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com> <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com> <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com> <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
 <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com>
In-Reply-To: <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com>
From:   Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Date:   Wed, 20 Jul 2022 15:44:10 -0700
Message-ID: <CA+FoirA-FeYeA5ZPgCvo55Hg_dfe7dT54Co8CkU9wW8yemFcJA@mail.gmail.com>
Subject: Re: Update bpf-helpers(7) man page
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Quentin Monnet <quentin@isovalent.com>,
        linux-man <linux-man@vger.kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks for handling that folks.
I'll keep an eye on the man page updating.

Alejandro, do you have an idea when it might be that you would
run the script and update the page? I can verify afterwards.
