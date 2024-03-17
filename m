Return-Path: <linux-man+bounces-650-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6450E87DDDB
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 16:17:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3C2628138D
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 15:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E647F1C691;
	Sun, 17 Mar 2024 15:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4ywYUcz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A787D1C2A3
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 15:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710688659; cv=none; b=UzQHF97PrbvjCsBShHH3nJ30hSFWMqYvIBXdLvS5fwiwVYrfcdO0b6ERH59S/JU1CABMWMWtnVs/niNnOayxMVnDtI8wkzuBavjo6fDGKcSOHBQekckp3MRUxAT0fTXuUqQAUHRKZ7Q6dVJuRzR+FWGa7OiMOkC6OwVylBY65MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710688659; c=relaxed/simple;
	bh=REmS/Aj8jDuXjSPu3NCfFHeogVhHQ3awtSJlWrVXEHY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BNsUEjBcHpPg2KBWb9UKl67AvGz1SXDfah41+8FcAbSSX22fmCS/udVItJSHdCYuITSbtPEqQxbsaBdsyDiEkjgDXsAVAHNB7BDSlauc3pZhsq/Yi7kYnOweB7jvY1p96Jooyx7SFaoRBFwJXrwS4XMnhA6jBokVXFtlqxUv6ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4ywYUcz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78EB6C433F1;
	Sun, 17 Mar 2024 15:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710688659;
	bh=REmS/Aj8jDuXjSPu3NCfFHeogVhHQ3awtSJlWrVXEHY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m4ywYUczgixzqMXDb41wSKdPhHJ8UpZcmPGt1pv9oLEp1g5pkFnSAnLfSI3sUfn3f
	 UD22RtsfFM9bOt3pD+oY0fn8WfKNFv+wlRYxNPxsyrD70DODLVUBUs34qd/rhmnf50
	 Kle9pXdvXTEj6/xCP81RX6M3uXDCAsdPvltmycJ6tSIO9wOdO7i2cpcPS/PR70repj
	 6Vjt1uOC1heE3HOLgpovx+k0nWhSNY8AxX1YGqbARlXRTaKKu3/TxZouL3ZvQfx/aM
	 SkAtfZpdPdu+85ZJj0LVkuDpQ78uf0TIwfhUBnmxgfRDbnt8FDNkiyQ2d4ECIQkVHD
	 7kukVfkz7hoOg==
Date: Sun, 17 Mar 2024 16:17:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Oliver Crumrine <ozlinuxc@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] ip.7: Add not supported by SOCK_STREAM to socket options
Message-ID: <ZfcJkAGXJw6Dr9Ez@debian>
References: <CAK1VsR0XZMgUW8qMQMcDPohD8-+OZsgW68sZegLbVy6cdoWucQ@mail.gmail.com>
 <ZehrtwSDQV-X7BXV@debian>
 <CAK1VsR3MsyphK+=rA7XcEigiSd6J_-QsVW+8hH1fU9xmRY3nGQ@mail.gmail.com>
 <CAK1VsR2zaCT3Bs1cwCEfLhAPXjwNk1byzNq5y32C736=hxqjoA@mail.gmail.com>
 <ZfX0EBsVl4a5FQ_L@debian>
 <f7pbphvm5cqgdblxyhbz6xucfu3fvfmvhidl2hftqirr6bn2bh@sfz26be5ss5e>
 <ZfZPTsdxElzcqtpe@debian>
 <6okjxxxylfeedmng6xafklbyrnleihzw3twr6mqvta4ihuxaxc@3bpndgyuv6ek>
 <Zfb2POtwUqhZE9Yt@debian>
 <hxkixsi6uymkjmt4ughda2xmh6guzcaccrjbvsuasndyuvq5rz@36oqfaepfiql>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="buA79o1hsT3LrUZV"
Content-Disposition: inline
In-Reply-To: <hxkixsi6uymkjmt4ughda2xmh6guzcaccrjbvsuasndyuvq5rz@36oqfaepfiql>


--buA79o1hsT3LrUZV
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 Mar 2024 16:17:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Oliver Crumrine <ozlinuxc@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] ip.7: Add not supported by SOCK_STREAM to socket options

Hi Oliver,


On Sun, Mar 17, 2024 at 06:52:54AM -0400, Oliver Crumrine wrote:
> On Sun, Mar 17, 2024 at 02:55:08PM +0100, Alejandro Colomar wrote:
> > On Sun, Mar 17, 2024 at 05:02:39AM -0400, Oliver Crumrine wrote:
> > > 	s =3D socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
> >=20
> > Why use IPPROTO_UDP?  ip(7)'s SYNOPSIS uses 0. Are there any other
> Both are fine, but I can change the code to zero.
> > protocols available with (AF_INET, SOCK_DGRAM)?
> According to the ip(7) man page, only IPPROTO_UDPLITE, which functions
> basically the same as udp, going as far as to use the same protocol
> handler. I believe it's just a difference in the way checksums are
> handled between UDP and UDPLITE.

Ahh, ok, then IPPROTO_UDP is fine.

> >=20
> > Now about the patch, it seems to miss IP_RETOPTS, which is also handled
> > in ip_cmsg_recv_offset()?  Or am I missing something?
> >=20
> According to the ip(7) man page, IP_RETOPTS functions the same as
> IP_RECVOPTS, which already properly states it is not supported on=20
> SOCK_STREAM sockets.

I still prefer if we state it's not supported.  One could think that
this one might be a version supported by SOCK_STREAM.

> > Please resend the programs when you send v2 of the patch, not send the
> > client programs, and show a diff of both programs.
> I don't think this warrants a v2 -- I haven't changed the patch at all,
> but I'll resend the programs, and heres a diff of the dgram server
> program, the only one I changed:

Actually, the diff I was interested in is the diff between the dgram
and the stream servers.


Have a lovely day!
Alex

>=20
> --- a/testDgramSocketServer.c     2024-03-17 06:47:47.440033068 -0400
> +++ b/testDgramSocketServer.c     2024-03-17 06:48:15.800033455 -0400
> @@ -22,7 +22,7 @@
>         struct sockaddr_in local_addr;
>         int s;
> =20
> -       s =3D socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
> +       s =3D socket(AF_INET, SOCK_DGRAM, 0);
>         if (s =3D=3D -1){
>                 err(1, "error creating socket");
>         }
>=20
>=20
> > Have a lovely day!
> > Alex
> >=20
> > > 	if(s =3D=3D -1){
> > > 		err(1, "error creating socket");
> > > 	}
> > >=20
> > > 	memset(&server_addr, 0, sizeof(server_addr));
> > > =09
> > > 	server_addr.sin_family =3D AF_INET;
> > > 	server_addr.sin_port =3D htons(PORT);
> > > 	if(inet_pton(AF_INET, ADDR, &server_addr.sin_addr) !=3D 1){ //I real=
ize I'm checking the return value differently here. If you read the man pag=
e for inet_pton, it'll make sense.
> > > 		err(1, "error converting network address");
> > > 	}
> > >=20
> > > 	if(sendto(s, buf, strlen(buf), 0, (struct sockaddr*)&server_addr, si=
zeof(server_addr)) =3D=3D -1){
> > > 		err(1, "error sending data");
> > > 	}
> > > =09
> > > 	close(s);
> > > }
> >=20
> > > #include<stdio.h>
> > > #include<err.h>
> > > #include<string.h>
> > > #include<stdlib.h>
> > > #include<arpa/inet.h>
> > > #include<sys/socket.h>
> > > #include<unistd.h>
> > >=20
> > > #define PORT 8888	//The port on which to listen for incoming data
> > >=20
> > >=20
> > > //Hi Alex,
> > > //These are the two lines that allow you to switch between the three =
socket options outlined in my patch
> > > //The socket options tell the kernel to add a control message (cmsg),=
 allowing the program
> > > //to recieve the data it is requesting. The three options are: IP_REC=
VTOS for the type of service byte,
> > > //IP_RECVORIGDSTADDR for the orignial dst address, and IP_PKTINFO for=
 some random packet info.
> > > #define SOCKOPT IP_RECVORIGDSTADDR
> > > //This field is synonymous with the above one. Valid options are: IP_=
TOS, IP_ORIGDSTADDR, and IP_PKTINFO
> > > #define RECIVEOPTION IP_ORIGDSTADDR
> > >=20
> > > int main(void){
> > > 	struct sockaddr_in local_addr;=09
> > > 	int s;
> > > =09
> > > 	s =3D socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
> > > 	if (s =3D=3D -1){
> > > 		err(1, "error creating socket");
> > > 	}
> > > =09
> > > 	memset(&local_addr, 0, sizeof(local_addr));
> > > =09
> > > 	local_addr.sin_family =3D AF_INET;
> > > 	local_addr.sin_port =3D htons(PORT);
> > > 	local_addr.sin_addr.s_addr =3D htonl(INADDR_ANY);
> > >=20
> > > 	int yes =3D 1;
> > > 	if(setsockopt(s, IPPROTO_IP, SOCKOPT, &yes, sizeof(yes)) =3D=3D -1){
> > > 		err(1, "error setting socket option");
> > > 	}
> > >=20
> > >=20
> > > 	if(bind(s, (struct sockaddr*)&local_addr, sizeof(local_addr) ) =3D=
=3D -1){
> > > 		err(1, "error binding to port. try changing it or running as root");
> > > 	}
> > >=20
> > > 	while(1){
> > > 		struct msghdr mhdr;
> > > 		struct iovec iov[1];
> > > 		struct cmsghdr *cmhdr;
> > > 		char control[1000];
> > > 		char databuf[BUFSIZ];
> > > 		unsigned char tos =3D 0;
> > >=20
> > > 		mhdr.msg_name =3D &local_addr;
> > > 		mhdr.msg_namelen =3D sizeof(local_addr);
> > > 		mhdr.msg_iov =3D iov;
> > > 		mhdr.msg_iovlen =3D 1;
> > > 		mhdr.msg_control =3D &control;
> > > 		mhdr.msg_controllen =3D sizeof(control);
> > > 		iov[0].iov_base =3D databuf;
> > > 		iov[0].iov_len =3D sizeof(databuf);
> > > 		memset(databuf, 0, sizeof(databuf));=09
> > > 	=09
> > > 		//this is blocking
> > > 		int msglen =3D recvmsg(s, &mhdr, 0);
> > > 		if (msglen =3D=3D -1){
> > > 			err(1, "recvmsg");
> > > 		}
> > > 		cmhdr =3D CMSG_FIRSTHDR(&mhdr);
> > > 		while (cmhdr) {
> > > 			printf("cmsg recieved\n");
> > > 			if (cmhdr->cmsg_level =3D=3D IPPROTO_IP && cmhdr->cmsg_type =3D=3D=
 RECIVEOPTION) {
> > > 				//read the byte recieved
> > > 				tos =3D ((unsigned char *)CMSG_DATA(cmhdr))[0];
> > > 			}
> > > 			cmhdr =3D CMSG_NXTHDR(&mhdr, cmhdr);
> > > 		}
> > > 		//print out the first byte of data recieved in hex. You can verify =
this in wireshark if you like.
> > > 		printf("data read: %sbyte =3D %02X\n", databuf, tos);	=09
> > > 	=09
> > > 	}
> > >=20
> > > 	close(s);
> > > 	return 0;
> > > }
> >=20
> > > #include <stdio.h>
> > > #include <err.h>
> > > #include <string.h>
> > > #include <stdlib.h>
> > > #include <arpa/inet.h>
> > > #include <sys/socket.h>
> > > #include <unistd.h>
> > >=20
> > > #define PORT 8888 //The port on which to send data
> > > #define ADDR "127.0.0.1" //The internet address to send packets to
> > >=20
> > > int main(void){
> > > 	int s;
> > > 	struct sockaddr_in server_addr;
> > >=20
> > > 	char buf[] =3D "testing 1 2 3\n";
> > >=20
> > > 	s =3D socket(AF_INET, SOCK_STREAM, 0);
> > > 	if(s =3D=3D -1){
> > > 		err(1, "error creating socket");
> > > 	}
> > >=20
> > > 	memset(&server_addr, 0, sizeof(server_addr));
> > > =09
> > > 	server_addr.sin_family =3D AF_INET;
> > > 	server_addr.sin_port =3D htons(PORT);
> > > 	if(inet_pton(AF_INET, ADDR, &server_addr.sin_addr) !=3D 1){ // I rea=
lize I'm checking the return value differently here. If you read the man pa=
ge for inet_pton, it'll make sense.
> > > 		err(1, "error converting network address");
> > > 	}
> > >=20
> > > 	if(connect(s, (struct sockaddr*)&server_addr, sizeof(server_addr)) =
=3D=3D -1){
> > > 		err(1, "error connecting");
> > > 	}
> > > 	if(send(s, buf, strlen(buf), 0) =3D=3D -1){
> > > 		err(1, "error sending data");
> > > 	}
> > > =09
> > > 	close(s);
> > > }
> >=20
> > > #include<stdio.h>
> > > #include<err.h>
> > > #include<string.h>
> > > #include<stdlib.h>
> > > #include<arpa/inet.h>
> > > #include<sys/socket.h>
> > > #include<unistd.h>
> > >=20
> > > #define PORT 8888	//The port on which to listen for incoming data
> > >=20
> > >=20
> > > //Hi Alex,
> > > //These are the two lines that allow you to switch between the three =
socket options outlined in my patch
> > > //The socket options tell the kernel to add a control message (cmsg),=
 allowing the program
> > > //to recieve the data it is requesting. The three options are: IP_REC=
VTOS for the type of service byte,
> > > //IP_RECVORIGDSTADDR for the orignial dst address, and IP_PKTINFO for=
 some random packet info.
> > > #define SOCKOPT IP_RECVORIGDSTADDR
> > > //This field is synonymous with the above one. Valid options are: IP_=
TOS, IP_ORIGDSTADDR, and IP_PKTINFO
> > > #define RECIVEOPTION IP_ORIGDSTADDR
> > >=20
> > > int main(void){
> > > 	struct sockaddr_in local_addr;
> > > 	int s;
> > > =09
> > > 	s =3D socket(AF_INET, SOCK_STREAM, 0);
> > > 	if (s =3D=3D -1){
> > > 		err(1, "error creating socket");
> > > 	}
> > > =09
> > > 	memset(&local_addr, 0, sizeof(local_addr));
> > > =09
> > > 	local_addr.sin_family =3D AF_INET;
> > > 	local_addr.sin_port =3D htons(PORT);
> > > 	local_addr.sin_addr.s_addr =3D htonl(INADDR_ANY);
> > >=20
> > > 	int yes =3D 1;
> > > 	if(setsockopt(s, IPPROTO_IP, SOCKOPT, &yes, sizeof(yes)) =3D=3D -1){
> > > 		err(1, "error setting socket option");
> > > 	}
> > >=20
> > >=20
> > > 	if(bind(s, (struct sockaddr*)&local_addr, sizeof(local_addr) ) =3D=
=3D -1){
> > > 		err(1, "error binding to port. try changing it or running as root");
> > > 	}
> > > =09
> > > 	if(listen(s, 10) =3D=3D -1){ //10 is the backlog of un-accepted conn=
ections. its just an arbitrary number
> > > 		err(1, "error listening on port");
> > > 	}
> > >=20
> > > 	while(1){
> > > 		int connfd =3D accept(s, (struct sockaddr*)NULL, NULL);
> > > 		if(connfd =3D=3D -1){
> > > 			err(1, "error accepting connection");
> > > 		}
> > > 		if(setsockopt(s, IPPROTO_IP, SOCKOPT, &yes, sizeof(yes)) =3D=3D -1)=
{ //stream sockets should have this set on the connected socket as well. I =
left it above for uniformity between the two programs.
> > > 			err(1, "error setting socket option");
> > > 		}
> > > =09
> > > 		struct msghdr mhdr;
> > > 		struct iovec iov[1];
> > > 		struct cmsghdr *cmhdr;
> > > 		char control[1000];
> > > 		char databuf[BUFSIZ];
> > > 		unsigned char tos =3D 0;
> > >=20
> > > 		mhdr.msg_name =3D &local_addr;
> > > 		mhdr.msg_namelen =3D sizeof(local_addr);
> > > 		mhdr.msg_iov =3D iov;
> > > 		mhdr.msg_iovlen =3D 1;
> > > 		mhdr.msg_control =3D &control;
> > > 		mhdr.msg_controllen =3D sizeof(control);
> > > 		iov[0].iov_base =3D databuf;
> > > 		iov[0].iov_len =3D sizeof(databuf);
> > > 		memset(databuf, 0, sizeof(databuf));=09
> > > 	=09
> > > 		//this is blocking
> > > 		int msglen =3D recvmsg(connfd, &mhdr, 0);
> > > 		if (msglen =3D=3D -1){
> > > 			err(1, "recvmsg\n");
> > > 		}
> > > 		cmhdr =3D CMSG_FIRSTHDR(&mhdr);
> > > 		while (cmhdr) {
> > > 			printf("cmsg recieved\n");
> > > 			if (cmhdr->cmsg_level =3D=3D IPPROTO_IP && cmhdr->cmsg_type =3D=3D=
 RECIVEOPTION) {
> > > 				//read the byte recieved
> > > 				tos =3D ((unsigned char *)CMSG_DATA(cmhdr))[0];
> > > 			}
> > > 			cmhdr =3D CMSG_NXTHDR(&mhdr, cmhdr);
> > > 		}
> > > 		//print out the first byte of data recieved in hex. You can verify =
this in wireshark if you like.
> > > 		printf("data read: %sbyte =3D %02X\n", databuf, tos);=09
> > > 		close(connfd);
> > > 	}
> > >=20
> > > 	close(s);
> > > 	return 0;
> > > }
> >=20
> >=20
> > --=20
> > <https://www.alejandro-colomar.es/>
>=20
>=20

> #include<stdio.h>
> #include<err.h>
> #include<string.h>
> #include<stdlib.h>
> #include<arpa/inet.h>
> #include<sys/socket.h>
> #include<unistd.h>
>=20
> #define PORT 8888	//The port on which to listen for incoming data
>=20
>=20
> //Hi Alex,
> //These are the two lines that allow you to switch between the three sock=
et options outlined in my patch
> //The socket options tell the kernel to add a control message (cmsg), all=
owing the program
> //to recieve the data it is requesting. The three options are: IP_RECVTOS=
 for the type of service byte,
> //IP_RECVORIGDSTADDR for the orignial dst address, and IP_PKTINFO for som=
e random packet info.
> #define SOCKOPT IP_RECVORIGDSTADDR
> //This field is synonymous with the above one. Valid options are: IP_TOS,=
 IP_ORIGDSTADDR, and IP_PKTINFO
> #define RECIVEOPTION IP_ORIGDSTADDR
>=20
> int main(void){
> 	struct sockaddr_in local_addr;=09
> 	int s;
> =09
> 	s =3D socket(AF_INET, SOCK_DGRAM, 0);
> 	if (s =3D=3D -1){
> 		err(1, "error creating socket");
> 	}
> =09
> 	memset(&local_addr, 0, sizeof(local_addr));
> =09
> 	local_addr.sin_family =3D AF_INET;
> 	local_addr.sin_port =3D htons(PORT);
> 	local_addr.sin_addr.s_addr =3D htonl(INADDR_ANY);
>=20
> 	int yes =3D 1;
> 	if(setsockopt(s, IPPROTO_IP, SOCKOPT, &yes, sizeof(yes)) =3D=3D -1){
> 		err(1, "error setting socket option");
> 	}
>=20
>=20
> 	if(bind(s, (struct sockaddr*)&local_addr, sizeof(local_addr) ) =3D=3D -1=
){
> 		err(1, "error binding to port. try changing it or running as root");
> 	}
>=20
> 	while(1){
> 		struct msghdr mhdr;
> 		struct iovec iov[1];
> 		struct cmsghdr *cmhdr;
> 		char control[1000];
> 		char databuf[BUFSIZ];
> 		unsigned char tos =3D 0;
>=20
> 		mhdr.msg_name =3D &local_addr;
> 		mhdr.msg_namelen =3D sizeof(local_addr);
> 		mhdr.msg_iov =3D iov;
> 		mhdr.msg_iovlen =3D 1;
> 		mhdr.msg_control =3D &control;
> 		mhdr.msg_controllen =3D sizeof(control);
> 		iov[0].iov_base =3D databuf;
> 		iov[0].iov_len =3D sizeof(databuf);
> 		memset(databuf, 0, sizeof(databuf));=09
> 	=09
> 		//this is blocking
> 		int msglen =3D recvmsg(s, &mhdr, 0);
> 		if (msglen =3D=3D -1){
> 			err(1, "recvmsg");
> 		}
> 		cmhdr =3D CMSG_FIRSTHDR(&mhdr);
> 		while (cmhdr) {
> 			printf("cmsg recieved\n");
> 			if (cmhdr->cmsg_level =3D=3D IPPROTO_IP && cmhdr->cmsg_type =3D=3D REC=
IVEOPTION) {
> 				//read the byte recieved
> 				tos =3D ((unsigned char *)CMSG_DATA(cmhdr))[0];
> 			}
> 			cmhdr =3D CMSG_NXTHDR(&mhdr, cmhdr);
> 		}
> 		//print out the first byte of data recieved in hex. You can verify this=
 in wireshark if you like.
> 		printf("data read: %sbyte =3D %02X\n", databuf, tos);	=09
> 	=09
> 	}
>=20
> 	close(s);
> 	return 0;
> }

> #include<stdio.h>
> #include<err.h>
> #include<string.h>
> #include<stdlib.h>
> #include<arpa/inet.h>
> #include<sys/socket.h>
> #include<unistd.h>
>=20
> #define PORT 8888	//The port on which to listen for incoming data
>=20
>=20
> //Hi Alex,
> //These are the two lines that allow you to switch between the three sock=
et options outlined in my patch
> //The socket options tell the kernel to add a control message (cmsg), all=
owing the program
> //to recieve the data it is requesting. The three options are: IP_RECVTOS=
 for the type of service byte,
> //IP_RECVORIGDSTADDR for the orignial dst address, and IP_PKTINFO for som=
e random packet info.
> #define SOCKOPT IP_RECVORIGDSTADDR
> //This field is synonymous with the above one. Valid options are: IP_TOS,=
 IP_ORIGDSTADDR, and IP_PKTINFO
> #define RECIVEOPTION IP_ORIGDSTADDR
>=20
> int main(void){
> 	struct sockaddr_in local_addr;
> 	int s;
> =09
> 	s =3D socket(AF_INET, SOCK_STREAM, 0);
> 	if (s =3D=3D -1){
> 		err(1, "error creating socket");
> 	}
> =09
> 	memset(&local_addr, 0, sizeof(local_addr));
> =09
> 	local_addr.sin_family =3D AF_INET;
> 	local_addr.sin_port =3D htons(PORT);
> 	local_addr.sin_addr.s_addr =3D htonl(INADDR_ANY);
>=20
> 	int yes =3D 1;
> 	if(setsockopt(s, IPPROTO_IP, SOCKOPT, &yes, sizeof(yes)) =3D=3D -1){
> 		err(1, "error setting socket option");
> 	}
>=20
>=20
> 	if(bind(s, (struct sockaddr*)&local_addr, sizeof(local_addr) ) =3D=3D -1=
){
> 		err(1, "error binding to port. try changing it or running as root");
> 	}
> =09
> 	if(listen(s, 10) =3D=3D -1){ //10 is the backlog of un-accepted connecti=
ons. its just an arbitrary number
> 		err(1, "error listening on port");
> 	}
>=20
> 	while(1){
> 		int connfd =3D accept(s, (struct sockaddr*)NULL, NULL);
> 		if(connfd =3D=3D -1){
> 			err(1, "error accepting connection");
> 		}
> 		if(setsockopt(s, IPPROTO_IP, SOCKOPT, &yes, sizeof(yes)) =3D=3D -1){ //=
stream sockets should have this set on the connected socket as well. I left=
 it above for uniformity between the two programs.
> 			err(1, "error setting socket option");
> 		}
> =09
> 		struct msghdr mhdr;
> 		struct iovec iov[1];
> 		struct cmsghdr *cmhdr;
> 		char control[1000];
> 		char databuf[BUFSIZ];
> 		unsigned char tos =3D 0;
>=20
> 		mhdr.msg_name =3D &local_addr;
> 		mhdr.msg_namelen =3D sizeof(local_addr);
> 		mhdr.msg_iov =3D iov;
> 		mhdr.msg_iovlen =3D 1;
> 		mhdr.msg_control =3D &control;
> 		mhdr.msg_controllen =3D sizeof(control);
> 		iov[0].iov_base =3D databuf;
> 		iov[0].iov_len =3D sizeof(databuf);
> 		memset(databuf, 0, sizeof(databuf));=09
> 	=09
> 		//this is blocking
> 		int msglen =3D recvmsg(connfd, &mhdr, 0);
> 		if (msglen =3D=3D -1){
> 			err(1, "recvmsg\n");
> 		}
> 		cmhdr =3D CMSG_FIRSTHDR(&mhdr);
> 		while (cmhdr) {
> 			printf("cmsg recieved\n");
> 			if (cmhdr->cmsg_level =3D=3D IPPROTO_IP && cmhdr->cmsg_type =3D=3D REC=
IVEOPTION) {
> 				//read the byte recieved
> 				tos =3D ((unsigned char *)CMSG_DATA(cmhdr))[0];
> 			}
> 			cmhdr =3D CMSG_NXTHDR(&mhdr, cmhdr);
> 		}
> 		//print out the first byte of data recieved in hex. You can verify this=
 in wireshark if you like.
> 		printf("data read: %sbyte =3D %02X\n", databuf, tos);=09
> 		close(connfd);
> 	}
>=20
> 	close(s);
> 	return 0;
> }


--=20
<https://www.alejandro-colomar.es/>

--buA79o1hsT3LrUZV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX3CZAACgkQnowa+77/
2zKJNhAAgxWQa74GM5zig8/8iEZDJKo9pujDgL6Zf2yRuUtWfhpB6DhumOWNUgOx
AgUVTwgj8kYGLDhGVseLYarq1VA09spS9JyY+RQvw4zqxyRZjfaWY4bEKxaZCJ6a
+EX8KV1icYN2CbXdNCiwFzeFfucjGPZlYEOdBY7MCaTUWrxniX543qlq9TDWoRR6
bk3L9+Tv1REi51/tOI93isUp7K0y03bGBFbFN0tAFhqUga8othbvlFofHzdO7kcQ
en/yJMw0abaH+oQ7bgC69mwryQYGlhDOxZnmmFg98KD1IFq7Wj0PELA/2cTfu7rU
5m2oioPt8HiLkIsQmiW2jSl7cc6yy6Mc0EU+FtAKNd9YBhGRwZ5/txUzmtNMJG3d
glTDupYiZSj+Qo/PN1rLj7f8u10DZMaX1wa95axO9uXdUJwli6ucAkzCXXSpEqwn
mwWcgcJJoajibjAsKIU/gqY5grL4qI7aKLL25gNA9NohZWyY7OAVrQlkWtwuNHr7
sQGzaPNZAgf3Obredf100RqLxcOU5JZGHKvmNDZAv954AigZGBr8w6JySzt7iPcW
b1Yr4EnMer0i6sV66HMNLVbM3k6rc4ARtNrWadqmZwFKZonbU1k1bo1lxB4VAvWB
usesCZJSHLMS8E+5uI1k2hi9x0TVMjXbLdIPxkzDrFWtyoV0OTw=
=aZB9
-----END PGP SIGNATURE-----

--buA79o1hsT3LrUZV--

