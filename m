Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2364624B776
	for <lists+linux-man@lfdr.de>; Thu, 20 Aug 2020 12:55:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730649AbgHTKyq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Aug 2020 06:54:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731804AbgHTKy2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Aug 2020 06:54:28 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04242C061385
        for <linux-man@vger.kernel.org>; Thu, 20 Aug 2020 03:54:28 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id nv17so801814pjb.3
        for <linux-man@vger.kernel.org>; Thu, 20 Aug 2020 03:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=J00frWVM+aTGY5/+c6di8J7qTno4d/cujG9kL0S0tac=;
        b=BDXgGtaIu7DhMxiAnLyavg4bfcYv/9/WKCwjgFh8CGqFBBoMm267un0VpZa6Djo897
         G8Vy5ObeM0cZQ6nMtBPeksEns3UH75G6ZDCX0Lvts8kxX4h4KwX9dSIlD02qOfzgSSkp
         52NzcrdzbMs42Bn/bYFXMhxhyNKqrEb1oU8PEe7UcJIO5GVnacM+Dgkdb96AZeb+gfNq
         3lR847qS4wl70ToTKG0PVuOKmfjWkG55rCXWcLt4ppBlns2GKuj8EDUcmuqGHTuEeXdZ
         as9SN0CBvmyOYy8fRDc+V15Jk84ARDfFcg00s5UFKp2AnglPsP2fP/NAYA0uGSOhIiQL
         R+UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=J00frWVM+aTGY5/+c6di8J7qTno4d/cujG9kL0S0tac=;
        b=moTmEL9Y9l3jkD+FwfatiprxGFXnfx9WCH+89o7dFfiGROTNOeNjQIXM98XLw/OUQH
         x2XH+ll+qs/aICRe3mJclsK3bXcogL+s7dXaCcI3CTpG0P2ARpkd4px8e75bLfFOnF67
         CWKNl0eZgGbqLkjPjReqeBKwXPTZdHzw05wnl5EP3L925REZD135dfhCU6rKkBYD1Iml
         rySNauTcARMsLCVQY4LBY/LItlvSzr3fmNwBoRsDWup4dv5n3sEnaWPnuJ5I5faRkDkl
         PM+FqZ/hdIkxWpT348gjqHkV6cb1fOlpFggBaog4tzlwkf5GdXnOvB+M5m3irI7MQQsT
         eIyA==
X-Gm-Message-State: AOAM531pAUepKrgNjOYobn38MITz2VUapF7qqwn0x8+TqVNPjOB/94H2
        ciOvp4fKD9etWaqivvPPv8Ty0bpf72vMeS6Uptew+IN1IjM=
X-Google-Smtp-Source: ABdhPJz2lB7IyqyEnA00+eHsXGCjR37nNCcmoC/0hq9FLbtLjHW5ORS+xISPgI9p0wfBjN3kXqqlq4tKszEiQRP9yCw=
X-Received: by 2002:a17:902:b7c2:: with SMTP id v2mr2139357plz.34.1597920867429;
 Thu, 20 Aug 2020 03:54:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200818152940.383D9C061342@lindbergh.monkeyblade.net> <CAAJR7qbKpqVtHBKRKxV=cpzuJwsgtfnt-6vUMi3WbVBVbOTN9w@mail.gmail.com>
In-Reply-To: <CAAJR7qbKpqVtHBKRKxV=cpzuJwsgtfnt-6vUMi3WbVBVbOTN9w@mail.gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Thu, 20 Aug 2020 13:54:16 +0300
Message-ID: <CACKs7VD3VS-Y8Sg82w_4G5Pyv6CJtfOG45PyjTaJSbRsPErtOA@mail.gmail.com>
Subject: Re: Undelivered Mail Returned to Sender
To:     Rushil Umaretiya <rushilwiz@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Rushil,

On Tue, Aug 18, 2020 at 6:33 PM Rushil Umaretiya <rushilwiz@gmail.com> wrot=
e:
>
> Seems that I had html in the last one, 3rd time's the charm.
>
> Small typo on sudo(8), as of 8/11/20, version in the options:
>
>      -B, --bell  Ring the bell as part of the password promp when a termi=
nal
>                  is present.  This option has no effect if an askpass pro=
=E2=80=90
>                  gram is used.
>
> somebody seemed to have missed a 't' in prompt

As far as I can tell from
https://man7.org/linux/man-pages/man8/sudo.8.html#COLOPHON, the man
page comes from the sudo package, not man-pages. Check the bug
reporting info there, you should probably report this to the sudo
maintainers.

Stefan.
