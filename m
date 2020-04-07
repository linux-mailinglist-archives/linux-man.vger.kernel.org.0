Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1CFB41A0948
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 10:25:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727815AbgDGIZ5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Apr 2020 04:25:57 -0400
Received: from mail-wr1-f43.google.com ([209.85.221.43]:45376 "EHLO
        mail-wr1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725817AbgDGIZ5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Apr 2020 04:25:57 -0400
Received: by mail-wr1-f43.google.com with SMTP id v5so2754016wrp.12
        for <linux-man@vger.kernel.org>; Tue, 07 Apr 2020 01:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k/G33IeDOK+H4HSocwxk8uhQwIwn4Gs22J8t/Nxv4dw=;
        b=apUcLIxsZpjkpyME/nvMx6kMDIPNfNC7ytI0F+bkosXNVSDMl3cjA4NBr2OyZy8h2E
         hVKP+FEbAXANPrfENFxDLK5dT3yGYH4ni0xLEv+0RJxpkqxVHmCAV8ZpWtRLzySkR8od
         Y2rvT5vdvE+ND6Q4COc3bnRmkq8BuvnVTWhGTaodF9dLK03SlBROIX9N99/fgVZOrEQI
         6WM7SId/fw6p6pzkXYtwdMRXEBC6YhKbfOOA5wX3Mo5YyzLC1vhFjSX2FnhRPRzr2qWm
         LCyEJzF6SnbNGgTaEw7d6fc+1kTfl0cx/fkk0c2ZHGL19P1Bv/TWy+gnvO/mk8MdhwKH
         fllQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k/G33IeDOK+H4HSocwxk8uhQwIwn4Gs22J8t/Nxv4dw=;
        b=YLvZnF2/GsVqGx9uFVc1QKXRlns8t8/D7MnQJoZGCsRxQB1/pvzhNj8yv7MyizHKEH
         N59Ws/MEJ0RHouUNe+EkYlZJThF3ac3uW0w7BGBLBgtMSPrJl/6LCdBpMQBwZHR5tx/c
         0NQX7q2pGrpmgYeU5XzAj/l4rOEMYXRfamogHsyZWfjHVXkKkPChAFIkfMx56zhtrL/e
         8vnFpKof1b8ZuDg3PH15GNv9SfkZW0o/T/8vLp+mBGj5UxIS3ii1Syzwmipm7qRuwf1Z
         uQU2TEN8buBZUIsDuA/WGqU2q3BJcrd7a2kx6X6rCuBwmPwVP7zmlh2OLKnggpLm2PC2
         YH1Q==
X-Gm-Message-State: AGi0PubzPa6w7YvhIOyXR1wGm3DRgouSrkcrzRLISzSfEAfrVE04geBM
        GTyk9vYr60RkcGw+GHr1OGCy2VLVt/w+fPzUp4XP6lPgzLs=
X-Google-Smtp-Source: APiQypJdY6mF22E8paA3+RNJ15vPZ2+uswXC4/vSXcJ7Vr/imSwlSfWEa2Jh74l7qA6DemWOTmD2cwcepu8Xv6BjHZE=
X-Received: by 2002:adf:9e01:: with SMTP id u1mr1371720wre.37.1586247955476;
 Tue, 07 Apr 2020 01:25:55 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR04MB6157E89BBF15AD9D70DDEA48B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
 <MN2PR04MB61571362350C94A82F545152B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
In-Reply-To: <MN2PR04MB61571362350C94A82F545152B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
From:   Ponnuvel Palaniyappan <pponnuvel@gmail.com>
Date:   Tue, 7 Apr 2020 09:25:44 +0100
Message-ID: <CAOL8xrXV=Zm0oMUZpR5LP06d9hLG-A-dBbp7=v3DHF3PS82nEA@mail.gmail.com>
Subject: Re: Fw: Suggestion for edit
To:     Andrew Micallef <andrew.micallef@live.com.au>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

That part of the description is directly taken from the C standard
(nearly verbatim). It's terse but quite clear though.

Thanks,
Ponnuvel


On Tue, Apr 7, 2020 at 8:08 AM Andrew Micallef
<andrew.micallef@live.com.au> wrote:
>
> Hi,
>
>
> I'd like to suggest an edit to the description of `strcmp` in the standard C library man page.
> I found this description to be kind of confusing, and think the language could be a bit more
> straight forward.
>
>
>
>  At present the description reads as follows:
>
> The strcmp() function compares the two strings s1 and s2.  The locale
>        is not taken into account (for a locale-aware comparison, see
>        strcoll(3)).  It returns an integer less than, equal to, or greater
>        than zero if s1 is found, respectively, to be less than, to match, or
>        be greater than s2.
>
> I am suggesting the following edits:
>
> The strcmp() function compares the two strings s1 and s2.  The locale
>        is not taken into account (for a locale-aware comparison, see
>        strcoll(3)).  It returns an integer, which is 0 if the strings
>        match. Otherwise, a negative integer indicates s1 is less than s2,
>        while a positive integer indicates s1 is greater than s2.
>
>
> Regards
> Andrew
>


-- 
Regards,
Ponnuvel P
