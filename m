Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0E635187CF
	for <lists+linux-man@lfdr.de>; Tue,  3 May 2022 17:04:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237771AbiECPHy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 May 2022 11:07:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232613AbiECPHx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 May 2022 11:07:53 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66FA13A193
        for <linux-man@vger.kernel.org>; Tue,  3 May 2022 08:04:20 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id y3so33946668ejo.12
        for <linux-man@vger.kernel.org>; Tue, 03 May 2022 08:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bmC7DRu7flM3aFzKHb+bDUK/tB+P+W9KDDy98mVSVQ0=;
        b=oyxVT1gpTaomCxljv6pbFCCpbu4ZgTR/80bvs4ClyThEQsIq3L3UeHcgt4WI2j+7Uf
         lpG1gBMr5yuIBdD0NvK/i6vwQSr7AUsssXoNfkNqCXxTbcaNwVQ2GkR267bP6zLn5QM0
         XxEgxNI7Vkbu6Crh8QfSUAvz9q57mPWXd1UGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bmC7DRu7flM3aFzKHb+bDUK/tB+P+W9KDDy98mVSVQ0=;
        b=X/if43SlVQc0O8BuJ3nyaz1SXqDu1qRrMRdr8DDvy5AiU+C1oTqU9BLAh0+fQlltwA
         xgk8EGYuCtfogx0jJcWG10cATojn6y/HVCBc1KOLOMWeLy79ZuZIfme8WOyl711QAUBS
         Prio9gdHEbKlwVR71RIGyzoQ4DxGdfwDnLymwcL2h0Qu/RAN2NDVoCEyfx9B+VMC1h9a
         yaap0DF8Mkznh9FksAvqKSaoYACBpQDLSmSJVA8ftjzQEEiI8xSK2Ixvg3K0qjN8wEiU
         X9mwYVRpZ8Pg5/OGL53GMEraTlRJfr0JBEPmFncCs1M9f7BunrIp1PPzAOg63wMrJZz6
         5zjQ==
X-Gm-Message-State: AOAM530R4iVUSNRFv+OAjehl3p1yGBK6Lg5BgVAnMyDNhWzHMH60uY7/
        ne23dQmr9avg84WzDb9iApc2oj46JP0aOdVUffi3ng==
X-Google-Smtp-Source: ABdhPJxhO8bLjM6wdea3bRux6bogjYO+c6+DWAw0ArELIY5Ox+tfOrkFBk71CkkeK4W0MVxxYnnxxKbq8koDg++bpqU=
X-Received: by 2002:a17:907:62aa:b0:6e0:f208:b869 with SMTP id
 nd42-20020a17090762aa00b006e0f208b869mr16047649ejc.270.1651590258996; Tue, 03
 May 2022 08:04:18 -0700 (PDT)
MIME-Version: 1.0
References: <YnEeuw6fd1A8usjj@miu.piliscsaba.redhat.com> <CAOQ4uxim+JmFbXPQcasELDEgRDP-spdPtJrLuhvSiyxErSUkvw@mail.gmail.com>
 <YnFB/ct2Q/yYBnm8@kroah.com>
In-Reply-To: <YnFB/ct2Q/yYBnm8@kroah.com>
From:   Miklos Szeredi <miklos@szeredi.hu>
Date:   Tue, 3 May 2022 17:04:06 +0200
Message-ID: <CAJfpegtZjRca5QPm2QgPtPG0-BJ=15Vtd48OTnRnr5G7ggAtmA@mail.gmail.com>
Subject: Re: [RFC PATCH] getting misc stats/attributes via xattr API
To:     Greg KH <gregkh@linuxfoundation.org>
Cc:     Amir Goldstein <amir73il@gmail.com>,
        linux-fsdevel <linux-fsdevel@vger.kernel.org>,
        Dave Chinner <david@fromorbit.com>,
        "Theodore Ts'o" <tytso@mit.edu>, Karel Zak <kzak@redhat.com>,
        Christian Brauner <brauner@kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Linux API <linux-api@vger.kernel.org>,
        linux-man <linux-man@vger.kernel.org>,
        LSM <linux-security-module@vger.kernel.org>,
        Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Christian Brauner <christian@brauner.io>,
        James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 3 May 2022 at 16:53, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, May 03, 2022 at 05:39:46PM +0300, Amir Goldstein wrote:

> > It should be noted that while this API mandates text keys,
> > it does not mandate text values, so for example, sb iostats could be
> > exported as text or as binary struct, or as individual text/binary records or
> > all of the above.
>
> Ugh, no, that would be a total mess.  Don't go exporting random binary
> structs depending on the file, that's going to be completely
> unmaintainable.  As it is, this is going to be hard enough with random
> text fields.
>
> As for this format, it needs to be required to be documented in
> Documentation/ABI/ for each entry and key type so that we have a chance
> of knowing what is going on and tracking how things are working and
> validating stuff.

My preference would be a single text value for each key.

Contents of ":mnt:info" contradicts that, but mountinfo has a long
established, well documented format, and nothing prevents exporting
individual attributes with separate names as well (the getvalues(2)
patch did exactly that).

Thanks,
Miklos
