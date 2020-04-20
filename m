Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 010031B147B
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726947AbgDTS3p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 14:29:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725784AbgDTS3p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:29:45 -0400
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com [IPv6:2607:f8b0:4864:20::943])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAE62C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:29:44 -0700 (PDT)
Received: by mail-ua1-x943.google.com with SMTP id a6so4058251uao.2
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=Qy0//FPbgnVJg6vLbV+9u14IFLSfsFGaN42bgSAdhf0=;
        b=Eos6TIyDbDDMUD42RT6qhwckwC/BR9OOfIeCoYEe+FoLkgdKfvSwhTXKJo+afVB9pM
         /m70jCu/G5/JLt1gol7vmfdclzpiAWfzurhChVmSKTE08iR6AMk4tLBm+3jaYERKMOl1
         Pd1jLIpI1z9S8vzFhqUKJEROLkhgl64wOv9T+wjf57THYoflPfeTHp/fnmIrishO/lYq
         d1eCbdSBmBlrdN6JwcJ+19q+uZ0Pw4028EgG1s7H7DaOvm3jmkq308zOZKCoTc/osP9M
         cewhbvV0w7lSylPQcYC4mwepn/twlS+r579ovzwMK4miN471VOKEnhrxKz2cjZlQNe1K
         Ui8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=Qy0//FPbgnVJg6vLbV+9u14IFLSfsFGaN42bgSAdhf0=;
        b=q+1wG2WmndaunZXPgunXIxj6oe5ngz4TIGL9bhTJIzhuuAxrO0VDD4wmGvCaR1kJnn
         ggsBLb6sm5i8jHQny0k7wJiI0dpSmFrI1bs5y1mqdz1mBJ5DJ2DU7ouArygPLRl8hnzx
         l4dQRzgpjWf9QpH3eRUQyBTnTfkzyLkyQgH7j/tWGmKY9aSs3aK2T8U/Zg8NtHM872HU
         CmXN2KxMOivIgCUB8sReh5tRUv6EgQT0VzmW2LFbrmZNTnEiW1pCifHbC5PK7MfpOnZ9
         5xD7Q7DsMMoT6HB4J78WM+z/t03ofnBHBuepD9f2OW9ICzEnQ/oYdSeeSmE85Zn64K0c
         gbGw==
X-Gm-Message-State: AGi0PuY1kD1bJ9Vjv/I/4uhA4oK7pga8KbMTt+62BF8cOnYAWxc1u+Qe
        sPp7ddb/xNjksaL4mgVKs19BSAvqjpXFVAFhcW8=
X-Google-Smtp-Source: APiQypIRODXo0NLQtvVoA1Wh4NdyFSjT1XefZN1poc2KnXqIA71QWHP62qJpDIkV3js2ArQeNOmtZZLypvVU1PYYmQU=
X-Received: by 2002:a9f:222c:: with SMTP id 41mr8919036uad.88.1587407383996;
 Mon, 20 Apr 2020 11:29:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064827.GA32117@Debian-50-lenny-64-minimal>
 <dd5fdce8-8329-5951-43da-34aeafae542f@gmail.com> <4A645675-6A27-4CC9-B8A8-EB7644DEC710@kolumbus.fi>
In-Reply-To: <4A645675-6A27-4CC9-B8A8-EB7644DEC710@kolumbus.fi>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 20:29:32 +0200
Message-ID: <CAKgNAkgrAUWJyjtv8Q=Pwwa_=QThTaQGz4v_W46+5gD7QEHEJA@mail.gmail.com>
Subject: Re: Errors in man pages, here: st(4): Content
To:     =?UTF-8?B?S2FpIE3DpGtpc2FyYSAoS29sdW1idXMp?= 
        <kai.makisara@kolumbus.fi>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Kai,

On Mon, 20 Apr 2020 at 17:51, "Kai M=C3=A4kisara (Kolumbus)"
<kai.makisara@kolumbus.fi> wrote:
>
>
>
> > On 20. Apr 2020, at 11.13, Michael Kerrisk (man-pages) <mtk.manpages@gm=
ail.com> wrote:
> >
> > [CC +=3D Kai]
> >
> > (Kai, I got a pile of queries from a downstream translation project)
> >
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> >> Dear manpages maintainers.
> >>
> ...
> >> We cannot understand the last sentence. What is "forward spacing"?
> >>
> >> "This option causes the B<MTEOM> operation to be sent directly to the =
drive, "
> >> "potentially speeding up the operation but causing the driver to lose =
track "
> >> "of the current file number normally returned by the B<MTIOCGET> reque=
st.  If "
> >> "B<MT_ST_FAST_EOM> is false, the driver will respond to an B<MTEOM> re=
quest "
> >> "by forward spacing over files."
> >
> > Perhaps Kai can help. I do not have a good explanation.
> >
> Spacing in tape terminology means going to the next file (or record or se=
t mark).
> The drives usually support a command to go to the end of the tape. The
> drawback is that no information is obtained about the number of files ski=
pped.
> If the driver spaces forward over files one by one, it can count how many
> files have been skipped.
>
> This is the technical description. But the text also says what is the con=
sequence
> for a user that does not care about technology. Spacing is mentions also
> earlier in the text.

So, no text changes needed here, right?

Thanks,

Michael
--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
