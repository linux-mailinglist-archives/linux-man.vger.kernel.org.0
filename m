Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4A466C24C6
	for <lists+linux-man@lfdr.de>; Mon, 20 Mar 2023 23:34:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229592AbjCTWeW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Mar 2023 18:34:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbjCTWeV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Mar 2023 18:34:21 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 165C130294
        for <linux-man@vger.kernel.org>; Mon, 20 Mar 2023 15:34:18 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-3d7aef37dccso2181cf.0
        for <linux-man@vger.kernel.org>; Mon, 20 Mar 2023 15:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1679351657;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nggAgZaJ7Vyj2WtvzQI56++WaTdL/jeEErWDuAeEmb8=;
        b=fibs7sXgF8FaeRY9ur7IJiGyvgxFZrxMdEwENsNbDMCfWKWPK5mQeNyk7NYYo6ezE5
         YkYr15DRtEy2s4LkytWGSf8z2J0M38IAZb10J2eW6MoUHWqSCcDAsu0VKByerDCK/KJr
         vabB+HghbUurWGAPHsIbDY/w7TVWhpRxZmItCCgqrdBXz/Xj/Cv3sgVaKBqfOoeEHgfp
         y1761gbMfU8cdvSFGybFtbtovEZ795yqK8fIRER29wiLkyQbnCGiv82Y4bEZIhmG5x53
         Bi0UfRdowHkd05oQ483o0FNr3aZu2Cb5mFnq8XET5GYBGZCldaftKvRfsVTfy1lOcV8A
         nPNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679351657;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nggAgZaJ7Vyj2WtvzQI56++WaTdL/jeEErWDuAeEmb8=;
        b=FBdxbHI3dOwStffBsOy3x7DmHD0AEoaD0WZm6eOlIH/kGq7pNujrhvJAeZlTmPLASb
         LHpiDGcnRuBoYH8O9S96aTGHs3g5SVK54PNjLm5m6cWoa8Zc8lctYxmSSMAkJOioCv2G
         FWEV60MgVloLNnFqK3KGuPVlt/4AJLrIryQ/rfIlLNW9KpKBVhqCeoQGvQx/2ALL3iX+
         noMej8TkrqN41BW3rKK1Jtt6Z/pBWcGhg8XwngsWKlc+xfc7i3Kpugsr9wd8GHVzEd5j
         B1yqTAzZoFpkprKCYS6mPvqMwdi/Hle802hM2uLvtbxxcgzjIdieLP/qcSWImWzCY8Yw
         eJMA==
X-Gm-Message-State: AO0yUKUyfgENegBtRSHhMWXoJCj6Lj68EIRy9MnKuSRjvkkuAHJQYZdm
        FNnx77t+rXCPt7JTBM7ssP3PezeNKodgnm0IuV7AnQ==
X-Google-Smtp-Source: AK7set9DY6chs5xQnQWg7Gf761eSZMf4xpYSiy55rHdhaH4G1B92A88LE9uuhPpz0LPpPQP+Tr+8dNaEsPchyA0U1u4=
X-Received: by 2002:a05:622a:11d5:b0:3e0:c2dd:fd29 with SMTP id
 n21-20020a05622a11d500b003e0c2ddfd29mr185376qtk.4.1679351657111; Mon, 20 Mar
 2023 15:34:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230320222057.1976956-1-talumbau@google.com>
In-Reply-To: <20230320222057.1976956-1-talumbau@google.com>
From:   Yu Zhao <yuzhao@google.com>
Date:   Mon, 20 Mar 2023 16:33:41 -0600
Message-ID: <CAOUHufbLykJj5TtHgYuot-Jw6Uu19yLPS2R4eTV8ThRd+7eAcQ@mail.gmail.com>
Subject: Re: [PATCH v3] posix_fadvise.2: NOREUSE now supported.
To:     "T.J. Alumbaugh" <talumbau@google.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Mar 20, 2023 at 4:21=E2=80=AFPM T.J. Alumbaugh <talumbau@google.com=
> wrote:
>
> POSIX_FADV_NOREUSE is now supported in Linux[1].
> Updates text regarding former no op behavior. Indicates the readahead
> policy and treatment of file pages read with this flag.
>
> [1]: https://lore.kernel.org/linux-mm/20221230215252.2628425-2-yuzhao@goo=
gle.com/
>
> Signed-off-by: T.J. Alumbaugh <talumbau@google.com>

Acked-by: Yu Zhao <yuzhao@google.com>
