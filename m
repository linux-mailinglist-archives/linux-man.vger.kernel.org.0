Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02DA22810BD
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 12:49:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726329AbgJBKtW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 06:49:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBKtV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 06:49:21 -0400
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com [IPv6:2607:f8b0:4864:20::d41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FB11C0613D0;
        Fri,  2 Oct 2020 03:49:20 -0700 (PDT)
Received: by mail-io1-xd41.google.com with SMTP id v8so1042751iom.6;
        Fri, 02 Oct 2020 03:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y7KPKP7p/PqqwBahTdy6N1A9YW0I11vmbu6jK2YtETo=;
        b=mMFnVyzpteyYEG2drBH9/DG5hd+xd4LQQe5ZOpOOODDlC1pyFJJtyrMI47BJq6CK8h
         Jo0LCcbbNPQpFfRbhyGHVgR8DPOLdnh1l28sDLEUKl66VqWz+WGf0BK03E/QS+boVq5u
         vNvzPIW9hk+Ln4TGDpWq71oRUQpBjMx480ngcsNDVLn0jNDBBLTp+QO/AKVlo2dpgzWy
         Kebh+kWKkpmPQO/fQEFDM48g1uL42VkN8iAezCqy2cNHKg8NdWblIsbstkFLBUriovQy
         KAE7QHSFYMgGY4YgzZsmvAemHmjndjbk/hs6BM8sxO8A0sK/s2GJMbLDk3b212qNak9/
         t0pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y7KPKP7p/PqqwBahTdy6N1A9YW0I11vmbu6jK2YtETo=;
        b=jD67bNd+QepgmSHfOwyrDqXplJ/W4IaEqstG1ENNVO/gI3D1V0a5GPL9P+itlSRE7Y
         zPpQPztoyHQ5FEcsCNBDiYQjd/pW2rCE4HpSj0xythrCM2hrvgrjcjEbrVlderDxcHXM
         cawPkKEKPAES4j7yhko+JlUAKsWVGhwgjBMR3cuMLkWImxktUwZ7FYn5/JKcP+K1cQuM
         H8Eh1NgTE0M8y45d3MHkqd1e3Yq3PSqV6yWILERpI7UEh1d4CvgOdpLp9leYI76hQPp1
         oQuGqvMCeVN6WfvEV8fRPPBrRyGQPLtjPopdxnk1bZgnqG1nhTXs2n6fBoGD1SuI773t
         CjYA==
X-Gm-Message-State: AOAM532gVt79xkqR5LF94cJpQB03ADaBb09jmQD3xr1jybN0lb/dOE3i
        CPSfnDJhxd0uKGCZE045ulU5bGJ8z8bsJkQ4UOzETdtw
X-Google-Smtp-Source: ABdhPJx349vqLpVGHE/lDqiH+7sz10baae/2W3jVoGayF0faxEuUtK1SFYtlQpYsbOx4d25ywfaHVaxTYn2dzYhnOlA=
X-Received: by 2002:a02:6cd0:: with SMTP id w199mr1480958jab.121.1601635759704;
 Fri, 02 Oct 2020 03:49:19 -0700 (PDT)
MIME-Version: 1.0
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com> <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
In-Reply-To: <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Fri, 2 Oct 2020 11:49:08 +0100
Message-ID: <CAH6eHdSLbaqTyXaPnBxnR4n+WVHJCBDF=C9RXa6To1rSuv0D4w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        mtk.manpages@gmail.com,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 2 Oct 2020 at 09:28, Alejandro Colomar via Gcc <gcc@gcc.gnu.org> wrote:
> However, it might be good that someone starts a page called
> 'type_qualifiers(7)' or something like that.

Who is this for? Who is trying to learn C from man pages? Should
somebody stop them?
