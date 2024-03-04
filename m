Return-Path: <linux-man+bounces-521-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A03EA87075C
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 17:41:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56A28281351
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 16:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C196140BEE;
	Mon,  4 Mar 2024 16:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LlxCs46q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB124205F
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 16:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709570490; cv=none; b=F9lMEvOjDet4V82NiHXbtE6mCT/E/yK8k3zayBV8LiUkcXckRTQbsB0eyRucXS4i01I+bdh+XaRAifPiYGVjheopYRlCBFrW4QO6eksJeid2YXwReRV+wHzpYQt3wHW+8te+O+BR1Rzxw0QbxAg9pU+8Jydtrst4Kncy0CeaPHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709570490; c=relaxed/simple;
	bh=lLvYU3iCgITOvEmtots/WHYge6pih0pUXk6V2mkaQAk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TnEcJdyQKX5qHWGH/1Ef2ymgqDfkNeNFplSFEUn+9Ztn2T4XYiMv92rHeGlOcNTkGR2BnML+FdHyVrJNIIyZEkpJ1Jy770UfmWJ9BaxRwxpuHR3UNGQVi41Bguk56gLrjUCcBlEIvrfP3u5ti2Y8w/Gyu9YCxeg8QeF3J7TKgIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LlxCs46q; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3c1ed6abf85so765637b6e.1
        for <linux-man@vger.kernel.org>; Mon, 04 Mar 2024 08:41:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709570488; x=1710175288; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RtfhIuF4M5F6uBjyAyzqDAU0BYX/YypuVAOYUCMBM34=;
        b=LlxCs46qg/aZ1BO7E/7olHsSLvE0qI9vJ3IeagksnbHof5L01n46XPcPzhCL6qbiFz
         QHJIJBwHO1HrJv4lv6ZUBiEUtiHTLvEe6p+kdfWpyXt9lqag/Sz0FaR1aB1vsGoefYPl
         abmMzKtL91W1qI5DeZ0nuk3UdvezOLBgR1KRkZRtHBfliTLi8kBnA/RFKwrmG6JVxQhu
         zL0IrXtPP8DoKuIgVDZASjL0JVdnrFTaFYoQ6qRVqVk8L0Yx7C0UxE+NJGvoF4WFwjcN
         Be1KuSSmxFzxj4MxfWphP1rfKMRBDgLA1/c7VtFpzAmu3ZRVFyXaReC4qNNf2lN3tFp0
         iEbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709570488; x=1710175288;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RtfhIuF4M5F6uBjyAyzqDAU0BYX/YypuVAOYUCMBM34=;
        b=iGZyLvLxbt+uNzQhaKdSbZUcpzoj4UpZWaHKWQgrqFhgtiMTaJmM+/kScKVbvcoxEv
         sABNCnLA6ehoWDx+PRc6va/QxHz8hR6/QO5/ehJzMYk+4StzkEb0sdan5Hjx8E0YN7oi
         GZIyrgIyzgtBf/jb6mW/4gcuwL8/7w3/0U6JnhCCJYV4o/L0/VWjyfAxgjL+LZQgorgN
         8YjQ4qeRAXBkQvT343KpF7NaEMSKO9Qr+ZkGsOGLhLRSkYjzN3/C6gU77X+91q+x+8Vz
         ZoDeLoRlvNC/29SAKQ3DjCgbxy/qlg41cbWogf9tzG8G2pBPwQW4WQJigFYQ6DFDwpY+
         yT0A==
X-Gm-Message-State: AOJu0Yz/pkjcC1nkHQoq/fihbVinys5ci1ErOL7X/ojFW2zvZx5Ig0Ye
	zxDGHZmNdKU1fm3vJXc5oWuiafJynDqhjrDleKQv4UTTJ36D5sMsoyubbdori2HBbddWworloZC
	21S6G2X8RJ3cJemNUOWOhqoeUH9/7XZLZ0/4=
X-Google-Smtp-Source: AGHT+IHd0sxjyyOPxn7EJBJ/xGUKAn3cYqKTJhZEYUMTa/VzNcWWNDH7v75rcue5/zn5bjdfRG0zRYRdGDIqxjnDaxg=
X-Received: by 2002:a05:6808:1389:b0:3c1:b335:12bc with SMTP id
 c9-20020a056808138900b003c1b33512bcmr10438753oiw.5.1709570488072; Mon, 04 Mar
 2024 08:41:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CALPhBBbmrAMR70WT-JfKoSQVLhfxKv5B68Gyo_4zZRY-7SS0-g@mail.gmail.com>
 <ZeX1JTt2Sxot-JFU@debian>
In-Reply-To: <ZeX1JTt2Sxot-JFU@debian>
From: =?UTF-8?B?TGlsaSBQw7xzcMO2aw==?= <poordirtylili@gmail.com>
Date: Mon, 4 Mar 2024 17:41:17 +0100
Message-ID: <CALPhBBYSEAh2LBSZ0CAs-dwX=i+OBhMAbDxfFJ=T=1rAvnuJvQ@mail.gmail.com>
Subject: Re: patch - fixing sample program in unix.7
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alejandro,
Thanks for replying.

The client, after connecting, processes the argv items and sends all
of them, then issues the sending of a final END which, on the server
side, is not expected after DOWN which would halt the reading (In that
case, too, the processing of argv + the END should happen).
After the change,  DOWN does not break the reading, the closing END is
processed and there is no broken connection when client tries to send
END while the server closes after sending the result, which is not
received by the client.

--- without DOWN ----
client         server
argv1..N + END --->
<----- result
<---- connection closed

-----------problem-----------
argv1...N + DOWN ->
<---- result
END -> ?????
<---- connection closed

------- solution:---------
argv1...N + DOWN + END ->
<---- result
<---- connection closed

I hope I did not overlook something.
OK, maybe with a unique message containing only the DOWN from client,
the issue is not visible, because there is no result to return to
client and we don't care it the connection is just broken....

Cheers
PuLi

Alejandro Colomar <alx@kernel.org> ezt =C3=ADrta (id=C5=91pont: 2024. m=C3=
=A1rc. 4., H, 17:22):
>
> Hi Lili,
>
> > Subject: Re: patch - fixing sample program in unix.7
>
> On Sun, Mar 03, 2024 at 08:27:17PM +0100, Lili P=C3=BCsp=C3=B6k wrote:
> > diff --git a/man7/unix.7 b/man7/unix.7
>
> Please add some commit message.  I don't understand what this patch
> does.  How is it broken, and how does it fix it?
>
> > index cb1dcae45..7fb41af99 100644
> > --- a/man7/unix.7
> > +++ b/man7/unix.7
> > @@ -1057,7 +1057,7 @@ main(int argc, char *argv[])
> > \&
> >             if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
> >                 down_flag =3D 1;
> > -                break;
> > +                continue;
>
> DOWN is used to stop the server.  How would 'continue' help?
>
>
>         $ MANWIDTH=3D66 man unix | grep -C2 DOWN
>              tegers.  The client prints the sum and exits.   The  server
>              waits  for the next client to connect.  To stop the server,
>              the client is called with the command=E2=80=90line argument =
"DOWN".
>
>              The following output was recorded while running the  server
>              in the background and repeatedly executing the client.  Ex=
=E2=80=90
>              ecution  of  the  server  program ends when it receives the
>              "DOWN" command.
>
>            Example output
>         --
>                  $ ./client 11 -5
>                  Result =3D 6
>                  $ ./client DOWN
>                  Result =3D 0
>                  [1]+  Done                    ./server
>         --
>                          /* Handle commands. */
>
>                          if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
>                              down_flag =3D 1;
>                              break;
>         --
>                      close(data_socket);
>
>                      /* Quit on DOWN command. */
>
>                      if (down_flag) {
>
> Have a lovely day,
> Alex
>
>
> >             }
> > \&
> >             if (!strncmp(buffer, "END", sizeof(buffer))) {
> >
>
> --
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

